var pnr=document.getElementById("pnr")
var trackTrain=document.getElementById("track-train")
var homeContentBtn=document.getElementById("home-content-btn")
var robbery=document.getElementById("robbery")
var pnrStatusCancel=document.getElementById("pnr-status-cancel")
var pnrStatusForm=document.getElementById("pnr-status")
var trackTrainStatus=document.getElementById("track1")
var robbery=document.getElementById("robbery")
setInterval(()=>{
    if(homeContentBtn.textContent==pnr.textContent){
        homeContentBtn.textContent=trackTrain.textContent
        homeContentBtn.href=trackTrain.
        document.querySelector(".btn").style.backgroundColor="red"

    }
    else if(homeContentBtn.textContent==trackTrain.textContent){
        homeContentBtn.textContent=robbery.textContent
        homeContentBtn.href=robbery.href
        document.querySelector(".btn").style.backgroundColor="orange"

    }
    else{
 
        homeContentBtn.textContent=pnr.textContent
        homeContentBtn.href=pnr.href
        

    }
},2000)

//  toggle PNR form
pnr.addEventListener("click",()=>{
    pnrStatusForm.style.display='block'
})
pnrStatusCancel.addEventListener("click",()=>{
    pnrStatusForm.style.display='none'
})
trackTrain.addEventListener("click",()=>{
    trackTrainStatus.style.display="block"
})
document.getElementById("track-train-status").addEventListener("click",()=>{
    trackTrainStatus.style.display="none"
})

// Robbery page toggling
robbery.addEventListener("click",()=>{
    document.getElementById("online-complaint").style.display="block"
})
document.getElementById("robbery-cancel").addEventListener("click",()=>{
    document.getElementById("online-complaint").style.display="none"
})


// login page toggling



// Home-content
window.onload=function(){
    document.querySelector(".home-content").style.opacity='1'
    document.querySelector(".home-content").style.left='0px'
    setTimeout(()=>{
        console.log( document.querySelector("#home-content-span"))
        document.querySelector("#home-content-span").style.color='orange'
        document.querySelector("#home-content-span").style.fontSize='60px'
    },500)
}

//show cards
setTimeout(()=>{
    document.getElementById("card1").style.opacity='1'
},1000)
setTimeout(()=>{
    document.getElementById("card2").style.opacity='1'
},1500)
setTimeout(()=>{
    document.getElementById("card3").style.opacity='1'
},2000)
