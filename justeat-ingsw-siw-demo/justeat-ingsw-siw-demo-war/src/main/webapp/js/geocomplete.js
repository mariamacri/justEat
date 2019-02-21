// ------------------------------------------------------------------------
// Geocomplete: geocomplete.js
// ------------------------------------------------------------------------

!(($) => {
  "use strict"


  // ----------------------------------------------------------------------
  // Constants
  // ----------------------------------------------------------------------

  const NAME      = "geocomplete"
  const DATA_KEY  = `gmap.${NAME}`
  const EVENT_KEY = `.${DATA_KEY}`

  const AutocompleteOptions = [
    "bounds",
    "componentRestrictions",
    "placeIdOnly",
    "strictBounds",
    "types"
  ]

  const Settings = {
    appendToParent : true,
    fields         : null,
    geolocate      : false,
    map            : null,
    types          : ["geocode"],

    // Callbacks
    onChange       : function() {},
    onNoResult     : function() {}
  }

  const Event = {
    FOCUS         : `focus${EVENT_KEY}`,
    PLACE_CHANGED : "place_changed"
  }

  const AddressFunctions = {
    city: function (details, short) {
      return _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "locality"
      })
    },
    country: function (details, short) {
      return _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "country"
      })
    },
    county: function (details, short) {
      return _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "administrative_area_level_2"
      })
    },
    formattedaddress: function (details) {
      return details["formatted_address"]
    },
    neighborhood: function (details, short) {
      return _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "neighborhood"
      })
    },
    state: function (details, short) {
      return _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "administrative_area_level_1"
      })
    },
    street: function (details, short) {
      return _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "route"
      })
    },
    streetaddress: function (details, short) {
      const number = _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "street_number"
      })

      const street = _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "route"
      })

      return `${number} ${street}`
    },
    streetnumber: function (details, short) {
      return _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "street_number"
      })
    },
    zipcode: function (details, short) {
      return _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "postal_code"
      })
    },
    zipcodesuffix: function (details, short) {
      return _getAddressValue({
        placeAddress: details["address_components"],
        name: short ? "short_name" : "long_name",
        type: "postal_code_suffix"
      })
    }
  }

  const FieldFunctions = {
    clear: {
      INPUT: function($field) {
        $field.val("")
      },
      SELECT: function($field) {
        $field.val("")
      },
      SEMANTIC_DROPDOWN: function($field) {
        $field.dropdown("clear")
      }
    },
    set: {
      INPUT: function($field, value) {
        $field.val(value)
      },
      SELECT: function($field, value) {
        const index = $(`option:contains(${value})`, $field)[0].index
        $field.prop("selectedIndex", index)
      },
      SEMANTIC_DROPDOWN: function($field, value) {
        $field.dropdown("set selected", value)
      }
    }
  }


  // ----------------------------------------------------------------------
  // Global Variables
  // ----------------------------------------------------------------------

  let Index      = -1
  let StyleSheet = _createStyleSheet()


  // ----------------------------------------------------------------------
  // Class Definition
  // ----------------------------------------------------------------------

  class Geocomplete {

    constructor(element, settings) {
      if (typeof settings === "string") {
        settings = {}
      }
      settings = $.extend(true, {}, $.fn[NAME].settings, settings)

      // only copy over autocomplete options to avoid conflicts with google maps
      const options = {}
      Object.keys(settings).forEach((key) => {
        if (AutocompleteOptions.indexOf(key) !== -1) {
          options[key] = settings[key]
        }
      })

      this.element      = element
      this.fields       = settings.fields
      this.index        = Index += 1
      this.map          = settings.map
      this.obj          = new google.maps.places.Autocomplete(element, options)
      this.pacContainer = null

      // add event listenter when the place is changed
      this.obj.addListener(Event.PLACE_CHANGED, () => {
        const $element     = $(this.element)
        const placeDetails = this.getplace()

        if (_isEmptyResult(placeDetails)) {
          settings.onNoResult.call($element, placeDetails.name)
        }
        else {
          settings.onChange.call($element, placeDetails.name, placeDetails)

          if (this.fields != null) {
            this.fillfields()
          }

          if (this.map != null) {
            const location = placeDetails.geometry.location
            const viewport = placeDetails.geometry.viewport
            this.centermap(location || viewport)
          }
        }
      })

      // bias the search results based on the browser's geolocation
      if (settings.geolocate) {
        _geoLocate(this.obj)
      }

      if (settings.appendToParent) {

        // append the .pac-container to element's parent
        $(element).on(Event.FOCUS, function() {
          const $element = $(this)
          const geo      = $element.data(DATA_KEY)

          if (geo.pacContainer != null) {
            _appendContainer($element, geo.pacContainer)
            $element.off(Event.FOCUS)
          }
        })

        // delay function to ensure pac-container exists in DOM
        setTimeout(() => {
          this.pacContainer = $(".pac-container")[this.index]
        }, 1000)
      }
    }


    // --------------------------------------------------------------------
    // Public Methods
    // --------------------------------------------------------------------

    centermap(bounds) {
      if (bounds == null) {
        const details  = this.getplace()
        const location = details.geometry.location
        const viewport = details.geometry.viewport
        bounds         = viewport || location
      }

      if (bounds instanceof google.maps.LatLngBounds) {
        this.map.fitBounds(bounds)
      }
      else if (bounds instanceof google.maps.LatLng) {
        this.map.setCenter(bounds)
      }

      return $(this.element)
    }

    clearfields() {
      const fields  = this.fields

      if ($.type(fields) == "string") {
        $(`[data-${NAME}]`, $(this.fields)).each(function() {
          const $field = $(this)
          FieldFunctions.clear[_getFieldType($field)]($field)
        })
      }
      else if ($.type(fields) == "object") {
        for (let id in fields) {
          const $field = $(id)

          if ($field.length == 0) {
            _throwError(`${id} was not found in DOM`)
            continue
          }

          FieldFunctions.clear[_getFieldType($field)]($field)
        }
      }

      return $(this.element)
    }

    fillfields() {
      this.clearfields()

      const fields       = this.fields
      const placeDetails = this.obj.getPlace()

      if ($.type(fields) == "string") {
        $(`[data-${NAME}]`, $(this.fields)).each(function() {
          const $field      = $(this)
          const addressType = $field.data(NAME)
          _setFieldValue($field, addressType, placeDetails)
        })
      }
      else if ($.type(fields) == "object") {
        for (let id in fields) {
          const $field      = $(id)
          const addressType = fields[id]

          if ($field.length == 0) {
            _throwError(`${id} was not found in DOM`)
            continue
          }

          _setFieldValue($field, addressType, placeDetails)
        }
      }

      return $(this.element)
    }

    getbounds() {
      return this.obj.getBounds()
    }

    getplace() {
      return this.obj.getPlace()
    }

    setbounds(parms) {
      this.obj.setBounds(parms)
      return $(this.element)
    }

    setcomponentrestrictions(parms) {
      this.obj.setComponentRestrictions(parms)
      return $(this.element)
    }

    setoptions(parms) {
      this.obj.setOptions(parms)
      return $(this.element)
    }

    settypes(parms) {
      this.obj.setTypes(parms)
      return $(this.element)
    }


    // --------------------------------------------------------------------
    // Static Methods
    // --------------------------------------------------------------------

    static _jQueryInterface(settings, parms) {
      const $element = $(this)
      let geo        = $element.data(DATA_KEY)

      if (!geo) {
        geo = new Geocomplete(this[0], settings)
        $element.data(DATA_KEY, geo)
      }

      if (typeof settings === "string") {
        let method = settings.toLowerCase().replace(/\s+/g, "")

        if (geo[method]) {
          return geo[method](parms)
        }
        else {
          _throwError(`"${settings}" is not a valid method`)
        }
      }

      return this
    }

  }


  // ----------------------------------------------------------------------
  // Private Functions
  // ----------------------------------------------------------------------

  function _appendContainer($element, $pacContainer) {
    const left            = `${_calcLeftPosition($element)}px !important`
    const top             = `${_calcTopPosition($element)}px !important`
    $pacContainer.id      = `pac-container_${$element[0].id}`
    StyleSheet.innerHTML += `#${$pacContainer.id}{top:${top}; left:${left};}`

    $element.parent()
      .css({position: "relative"})
      .append($pacContainer)
  }

  function _calcLeftPosition($element) {
    const element_left = $element.offset().left
    const parent_left  = $element.parent().offset().left

    return element_left - parent_left
  }

  function _calcTopPosition($element) {
    const element_top    = $element.offset().top
    const element_height = $element.outerHeight()
    const parent_top     = $element.parent().offset().top

    return element_top - parent_top + element_height
  }

  function _createStyleSheet() {
    const style = document.createElement("style")
    style.type = "text/css"
    $("head")[0].appendChild(style)
    return style
  }

  function _geoLocate(obj) {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(function (position) {
        const circle = new google.maps.Circle({
          center: { lat: position.coords.latitude, lng: position.coords.longitude },
          radius: position.coords.accuracy
        })

        obj.setBounds(circle.getBounds())
      })
    }
  }

  function _getAddressValue(parms) {
    const placeAddress = parms.placeAddress || []
    const name         = parms.name
    const type         = parms.type

    const i = placeAddress.map(function(address) {
      return address.types[0] == type
    }).indexOf(true)

    return (i != -1) ? placeAddress[i][name] : ""
  }

  function _getFieldType($field) {
    return _isSemanticDropdown($field) ? "SEMANTIC_DROPDOWN" : $field.prop("nodeName")
  }

  function _isEmptyResult(placeDetails) {
    return Object.keys(placeDetails).length <= 1
  }

  function _isSemanticDropdown($field) {
    const $parent = $field.parent()

    if (($field.hasClass("ui") && $field.hasClass("dropdown")) ||
        ($parent.hasClass("ui") && $parent.hasClass("dropdown"))) {
      return true
    }
    return false
  }

  function _setFieldValue($field, addressType, placeDetails) {
    addressType       = addressType.toLowerCase().replace(/\s+/g, "")
    const short       = addressType.indexOf("short") != -1
    addressType       = addressType.replace("short", "")

    if (AddressFunctions[addressType]) {
      const value = AddressFunctions[addressType](placeDetails, short)
      FieldFunctions.set[_getFieldType($field)]($field, value)
    }
    else {
      _throwError(`${addressType} is not a valid address type`)
    }
  }

  function _throwError(message) {
    /* eslint-disable no-console */
    console.error(message)
  }


  // ------------------------------------------------------------------------
  // jQuery
  // ------------------------------------------------------------------------

  $.fn[NAME]             = Geocomplete._jQueryInterface
  $.fn[NAME].Constructor = Geocomplete
  $.fn[NAME].settings    = Settings


  return $
})(window.jQuery || window.$)
