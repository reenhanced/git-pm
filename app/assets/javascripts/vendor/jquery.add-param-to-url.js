(function($,W,D)
{
    var JQUERY4U = {};
 
    JQUERY4U.UTIL =
    {
        /**
          * Add a parameter to url if doesn't already exist
          * @param param - the parameter to add
          * @param value - the value of the parameter
          * @return url - the url with the appended parameter
          */
        addParamToUrl: function(param, value)
        {
            //check if param exists
            var result = new RegExp(param + "=([^&]*)", "i").exec(W.location.search);
            result = result && result[1] || "";
 
            //added seperately to append ? before params
            var loc = W.location;
            var url = loc.protocol + '//' + loc.host + loc.pathname + loc.search;
 
            //param doesn't exist in url, add it
            if (result === '')
            {
                //doesn't have any params
                if (loc.search === '')
                {
                    url += "?" + param + '=' + value;
                }
                else
                {
                    url += "&" + param + '=' + value;
                }
            }
 
            //return the finished url
            return url;
        }
    };
 
    //example usage
    var updatedUrl = JQUERY4U.UTIL.addParamToUrl('updated', 'true');
    console.log(updatedUrl);
    //input: http://jquery4u.com/index.php
    //output: http://jquery4u.com/index.php?updated=true
 
})(jQuery, window, document);
