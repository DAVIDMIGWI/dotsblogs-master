// https://newsapi.org/v2/everything?q=tesla&from=2021-11-28&sortBy=publishedAt&apiKey=7cfb3fce78584f628792f6c72f7c9af0

fetch('https://newsapi.org/v2/top-headlines?country=us&apiKey=7cfb3fce78584f628792f6c72f7c9af0')
  .then(res => res.json())
  .then(data => {
    console.log(data);
    let element = document.getElementById('posts');
    let sidebarElement = document.getElementById('postSidebar');
    data.articles.forEach((e, i) => {

      if (i < 4) {
          sidebarElement.innerHTML+= `
          <div onclick='openModal("${(i+4)+1}modal")' class="post-content" data-aos="flip-up" data-aos-delay="200">
          <div class="post-image">
              <div>
                  <img  src="${ data.articles[(i+4)+1].urlToImage}" class="img" alt="blog1">
              </div>
              <div class="post-info flex-row">
                  <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;</span>
                  <span>2 Commets</span>
              </div>
          </div>
          <div class="post-title">
              <a href="#">${data.articles[(i+4)+1].title}</a>
          </div>
      </div>
      <div id="${(i+4)+1}modal" class="modal">
                         
      <div class="modal-content">
        <span onclick='closeModal("${(i+4)+1}modal")' class="close">&times;</span>
        <br />
        <br />
        <br />
        <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
        <div class="post-image">
            <div>
                <img src="${data.articles[(i+4)+1].urlToImage}" class="img" alt="blog1">
            </div>
            <div class="post-info flex-row">
                <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;${data.articles[(i+4)+1].author}</span>
                <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;${(new Date(data.articles[(i+4)+1].publishedAt)).getDate()} - ${(new Date(data.articles[(i+4)+1].publishedAt)).getMonth()} - ${(new Date(data.articles[(i+4)+1].publishedAt)).getFullYear()}</span>
                <span>2 Commets</span>
            </div>
        </div>
        <div class="post-title">
            <a href="#"> 
            ${data.articles[(i+4)+1].title}
            </a>
            <p>
            ${data.articles[(i+4)+1].content}
            </p> 
        </div>
    </div>
      </div>
    
    </div>
          `


        element.innerHTML += `  <div  onclick='openModal("${(i)}modal")'  class="post-content" data-aos="zoom-in" data-aos-delay="200">
    <div class="post-image">
        <div>
            <img src="${e.urlToImage}" class="img" alt="blog1">
        </div>
        <div class="post-info flex-row">
            <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;${e.author}</span>
            <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;${(new Date(e.publishedAt)).getDate()} - ${(new Date(e.publishedAt)).getMonth()} - ${(new Date(e.publishedAt)).getFullYear()}</span>
            <span>2 Commets</span>
        </div>
    </div>
    <div class="post-title">
        <a href="#"> 
        ${e.title}
        </a>
        <p>
        ${e.description}
        </p>
        <button class="btn post-btn">Read More &nbsp; <i class="fas fa-arrow-right"></i></button>
    </div>
</div>

<div id="${(i)}modal" class="modal">
                         
<div class="modal-content">
  <span onclick='closeModal("${(i)}modal")' class="close">&times;</span>
  <br />
  <br />
  <br />
  <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
  <div class="post-image">
      <div>
          <img src="${e.urlToImage}" class="img" alt="blog1">
      </div>
      <div class="post-info flex-row">
          <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;${e.author}</span>
          <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;${(new Date(e.publishedAt)).getDate()} - ${(new Date(e.publishedAt)).getMonth()} - ${(new Date(e.publishedAt)).getFullYear()}</span>
          <span>2 Commets</span>
      </div>
  </div>
  <div class="post-title">
      <a href="#"> 
      ${e.title}
      </a>
      <p>
      ${e.description}
      </p> 
  </div>
</div>
</div>

</div>
`
document.getElementById('loader').innerHTML=  `   <button onclick='loadmore("${(i+4)+1}")' class="btn btn-info" id="loader" data-type='${(i+4)+1}'>Load more</button> `
                    
      }
    });
  })
  .catch(err => console.log(err))

 let  openModal = (el)=>{
    let m = document.getElementById(el)
    m.style.display = "block";
 }
 let  closeModal = (el)=>{ 
    let m = document.getElementById(el)
    m.style.display = "none";
 }
 
 
 let loadmore = (es)=>{
     console.log(JSON.parse(es));

     fetch('https://newsapi.org/v2/top-headlines?country=us&apiKey=7cfb3fce78584f628792f6c72f7c9af0')
     .then(res => res.json())
     .then(data => {
       console.log(data);
       let element = document.getElementById('posts');
       let sidebarElement = document.getElementById('postSidebar');
       data.articles.forEach((e, i) => {
   
         if (i < es) {
             sidebarElement.innerHTML+= `
             <div onclick='openModal("${(i+4)+1}modal")' class="post-content" data-aos="flip-up" data-aos-delay="200">
             <div class="post-image">
                 <div>
                     <img  src="${ data.articles[(i+4)+1].urlToImage}" class="img" alt="blog1">
                 </div>
                 <div class="post-info flex-row">
                     <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;</span>
                     <span>2 Commets</span>
                 </div>
             </div>
             <div class="post-title">
                 <a href="#">${data.articles[(i+4)+1].title}</a>
             </div>
         </div>
         <div id="${(i+4)+1}modal" class="modal">
                            
         <div class="modal-content">
           <span onclick='closeModal("${(i+4)+1}modal")' class="close">&times;</span>
           <br />
           <br />
           <br />
           <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
           <div class="post-image">
               <div>
                   <img src="${data.articles[(i+4)+1].urlToImage}" class="img" alt="blog1">
               </div>
               <div class="post-info flex-row">
                   <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;${data.articles[(i+4)+1].author}</span>
                   <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;${(new Date(data.articles[(i+4)+1].publishedAt)).getDate()} - ${(new Date(data.articles[(i+4)+1].publishedAt)).getMonth()} - ${(new Date(data.articles[(i+4)+1].publishedAt)).getFullYear()}</span>
                   <span>2 Commets</span>
               </div>
           </div>
           <div class="post-title">
               <a href="#"> 
               ${data.articles[(i+4)+1].title}
               </a>
               <p>
               ${data.articles[(i+4)+1].description}
               </p> 
           </div>
       </div>
         </div>
       
       </div>
             `
   
   
           element.innerHTML += `  <div  onclick='openModal("${(i)}modal")'  class="post-content" data-aos="zoom-in" data-aos-delay="200">
       <div class="post-image">
           <div>
               <img src="${e.urlToImage}" class="img" alt="blog1">
           </div>
           <div class="post-info flex-row">
               <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;${e.author}</span>
               <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;${(new Date(e.publishedAt)).getDate()} - ${(new Date(e.publishedAt)).getMonth()} - ${(new Date(e.publishedAt)).getFullYear()}</span>
               <span>2 Commets</span>
           </div>
       </div>
       <div class="post-title">
           <a href="#"> 
           ${e.title}
           </a>
           <p>
           ${e.description}
           </p>
           <button class="btn post-btn">Read More &nbsp; <i class="fas fa-arrow-right"></i></button>
       </div>
   </div>
   
   <div id="${(i)}modal" class="modal">
                            
   <div class="modal-content">
     <span onclick='closeModal("${(i)}modal")' class="close">&times;</span>
     <br />
     <br />
     <br />
     <div class="post-content" data-aos="zoom-in" data-aos-delay="200">
     <div class="post-image">
         <div>
             <img src="${e.urlToImage}" class="img" alt="blog1">
         </div>
         <div class="post-info flex-row">
             <span><i class="fas fa-user text-gray"></i>&nbsp;&nbsp;${e.author}</span>
             <span><i class="fas fa-calendar-alt text-gray"></i>&nbsp;&nbsp;${(new Date(e.publishedAt)).getDate()} - ${(new Date(e.publishedAt)).getMonth()} - ${(new Date(e.publishedAt)).getFullYear()}</span>
             <span>2 Commets</span>
         </div>
     </div>
     <div class="post-title">
         <a href="#"> 
         ${e.title}
         </a>
         <p>
         ${e.description}
         </p> 
     </div>
   </div>
   </div>
   
   </div>
   `
   document.getElementById('loader').innerHTML=  `   <button onclick='loadmore("${(i+i)+1}")' class="btn btn-info" id="loader" data-type='${(i+4)+1}'>Load more</button> `
                       
         }
       });
     })
   .catch(err => console.log(err))
 }


 const openLocalPost = (data) => {
     console.log(data);
 }