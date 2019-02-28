window.onload = function ()
{

    var obtn = document.getElementById("tn");
    var oput = document.getElementById("ut");
    var oul = document.getElementById("lis");
    var oli = oul.getElementsByTagName("li");

    oput.style.cssText = "background-color: rgba(90, 89, 88, 0.1);border: 2px solid #49afcd";

    obtn.onmouseover = function ()
    {
        obtn.style.backgroundColor = "rgb(107, 174, 208)";

    }

    obtn.onmouseout = function ()
    {
        obtn.style.backgroundColor = "rgb(247, 220, 4)";
    }

    var flag = true;

    oput.onclick = function ()
    {
        if(flag)
        {
            oput.style.cssText = "background-color: rgb(229, 227, 225); color: rgb(90, 89, 88)";
            flag = false;
        }
        else
        {
            oput.style.cssText = "background-color: rgba(90, 89, 88, 0.1); border: 2px solid #49afcd; color:white";
            flag = true;
        }
    }


    oli[0].onmouseover = function ()
    {
        this.style.cssText = "box-shadow: 2px 2px 5px rgb(3, 74, 95);";
    }

    oli[0].onmouseout = function ()
    {
        this.style = "";
    }

    oli[1].onmouseover = function ()
    {
        this.style.cssText = "box-shadow: 2px 2px 5px rgb(3, 74, 95);";
    }

    oli[1].onmouseout = function ()
    {
        this.style = "";
    }

    oli[2].onmouseover = function ()
    {
        this.style.cssText = "box-shadow: 2px 2px 5px rgb(3, 74, 95);";
    }

    oli[2].onmouseout = function ()
    {
        this.style = "";
    }

    oli[3].onmouseover = function ()
    {
        this.style.cssText = "box-shadow: 2px 2px 5px rgb(3, 74, 95);";
    }

    oli[3].onmouseout = function ()
    {
        this.style = "";
    }

    oli[4].onmouseover = function ()
    {
        this.style.cssText = "box-shadow: 2px 2px 5px rgb(3, 74, 95);";
    }

    oli[4].onmouseout = function ()
    {
        this.style = "";
    }

    oli[5].onmouseover = function ()
    {
        this.style.cssText = "box-shadow: 2px 2px 5px rgb(3, 74, 95);";
    }

    oli[5].onmouseout = function ()
    {
        this.style = "";
    }

    oli[6].onmouseover = function ()
    {
        this.style.cssText = "box-shadow: 2px 2px 5px rgb(3, 74, 95);";
    }

    oli[6].onmouseout = function ()
    {
        this.style = "";
    }

    oli[7].onmouseover = function ()
    {
        this.style.cssText = "box-shadow: 2px 2px 5px rgb(3, 74, 95);";
    }

    oli[7].onmouseout = function ()
    {
        this.style = "";
    }

}