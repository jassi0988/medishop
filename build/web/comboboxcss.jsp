<style>
.mydropbtn {
            
            color: white;
            
            font-size: 20px;
            text-transform: uppercase;
            color: #ffffff;
            
            border: none;
            cursor: pointer;
        }

        .mydropdown {
            position: relative;
            display: inline-block;
            
        }

        .mydropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            right: 0;
            min-width: 150px;
            text-align: center;
            padding: 1em 0;
            margin: 0;
            left:auto;
            border: 1px solid #ccc;
            border: 1px solid rgba(0, 0, 0, .15);
            border-radius: 4px;
            -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
          box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
        }

        .mydropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .mydropdown-content a:hover {background-color: #f1f1f1}

        .mydropdown:hover .mydropdown-content {
            display: block;
        }
</style>