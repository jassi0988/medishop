<%-- 
    Document   : call1
    Created on : 27 Mar, 2018, 3:04:34 PM
    Author     : Dell
--%>
<script src="jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
            $(".btn-primary").click(function(e){
                e.preventDefault();           
                var a=$(this).attr("id");
                $.ajax({
                    url:'ajax/addtocartnon.jsp',
                    data:{n:a},
                    type:'post',
                    success:function(result) 
                    {                       
                        window.location.href="cart.jsp"
                    },
                    error: function() 
                    {
                        $(".msg").html("error in ajax")
                    }
                });  
            }); 
            });
        </script>