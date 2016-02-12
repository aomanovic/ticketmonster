$('#price_categories_select').empty()
.append("<%= escape_javascript(render(:partial => @price_categories)) %>");
