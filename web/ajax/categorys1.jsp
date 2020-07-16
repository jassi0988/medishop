<%
    if(request.getParameter("mtype").equals("presciption"))
    {
%>
        
        <select id="type" name="type">
                        <option value="">Choose Type</option>
                        <option value="Liquid">Liquid</option>
                        <option value="Tablet">Tablet</option>
                        <option value="Injection">Injection</option>
                     </select>
<%
    }   
    else if(request.getParameter("mtype").equals("non-presciption"))
    {
%>
        <input type="text" name="descrption" placeholder="Description" id="description">
<%
    }
%>