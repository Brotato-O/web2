fetch('https://vn-public-apis.fpo.vn/provinces/getAll?limit=-1')
    .then((response) => response.json())
    .then((data) => {
        province= document.querySelector(".province")
        province.innerHTML=`<option value="default" selected>Chọn tỉnh</option>`;
        for(i=0; i< data.data.data.length; i++)
            province.innerHTML+= `<option value=${data.data.data[i].code}>${data.data.data[i].name}</option>`
    })
    .catch((error) => console.log("AAAA", error))

document.querySelector(".province").addEventListener("change", ()=>{
    let code= document.querySelector(".province").value;
    fetch(`https://vn-public-apis.fpo.vn/districts/getByProvince?provinceCode=${code}&limit=-1`)
        .then((response) => response.json())
        .then((data) =>{
            ward= document.querySelector(".ward")
            ward.innerHTML=`<option value="default" selected>Chọn phường</option>`;
            district= document.querySelector(".district")
            district.innerHTML=`<option value="default" selected>Chọn quận</option>`;
            if (province.value != "default")
                for(i=0; i< data.data.data.length; i++)
                    district.innerHTML+= `<option value=${data.data.data[i].code}>${data.data.data[i].name}</option>`
            
        })
        .catch((error) => console.log("AAAA", error))
})

document.querySelector(".district").addEventListener("change", ()=>{
    let code= document.querySelector(".district").value;
    fetch(`https://vn-public-apis.fpo.vn/wards/getByDistrict?districtCode=${code}&limit=-1`)
        .then((response) => response.json())
        .then((data) =>{
            province= document.querySelector(".province")
            ward= document.querySelector(".ward")
            ward.innerHTML=`<option value="default" selected>Chọn phường</option>`;
            if (district.value != "default" && province.value!="default")
                for(i=0; i< data.data.data.length; i++)
                    ward.innerHTML+= `<option value=${data.data.data[i].code}>${data.data.data[i].name}</option>`
        })
        .catch((error) => console.log("AAAA", error))
})