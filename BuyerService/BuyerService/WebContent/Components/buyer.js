/**
 * 
 */
const PORT = 8080;

function getData() {
  //load initial data to the view
  $.ajax({
    url: `http://localhost:${PORT}/BuyerService/api/v2/buyer/getbuyers`,
    type: "GET",
    success: function (result) {
      const buyerData = result;
      const tableId = $("#buyer_table");
      let output = ``;
      buyerData.forEach((data) => {
        output =
          output +
          `<tr>
          <td>${data.id}</td>
          <td>${data.userName}</td>
		  
          <td>${data.email}</td>
          <td>${data.password}</td>
          <td style="display: flex; flex-direction: row; align-itmes: center">
			
            <button
              id="${data.id}"
              type="button"
              class="btn btn-success btnUpdate"
              style="margin-right: 10px"
            >
              Update
            </button>
            <button
              id="${data.id}"
              class="btn btn-danger btnRemove"
              type="button"
              style="margin-left: 10px"
            >
              Delete
            </button>
          </td>
			
        </tr>
        `;
      });

      tableId.html(output);
    },
  });
}

getData();

//delete
$(document).on("click", ".btnRemove", (event) => {
  const deleteId = event.target.id;
  const target = event.target;
  target.innerHTML = `<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Wait`;

  $.ajax({
    url: `http://localhost:${PORT}/BuyerService/api/v2/buyer/deletebyid/${deleteId}`,
    type: "DELETE",
    complete: function (result) {
      if (result.status == 200) {
        target.parentNode.parentNode.style.display = "none";
        $("#deleteLabel").css("display", "block");

        setTimeout(() => {
          $("#deleteLabel").css("display", "none");
        }, 2000);
      } else {
        $("#deleteLabelerror").css("display", "block");
        target.innerHTML = `Delete`;
        setTimeout(() => {
          $("#deleteLabelerror").css("display", "none");
        }, 2000);
      }
    },
  });
});

//update
$(document).on("click", ".update", (event) => {
  event.preventDefault();
  const target = event.target;
  const userId = $("#id").val();
  const userName = $("#userName").val();
  const password = $("#password").val();
  const email = $("#email").val();
  
  

  target.innerHTML = `<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Wait`;

  $.ajax({
    url: `http://localhost:${PORT}/BuyerService/api/v2/buyer/update/${userId}`,
    type: "PUT",
    data: JSON.stringify({
      userName: userName,
	  password: password,
      email: email,
      
      
    }),
    contentType: "application/json",
    dataType: "json",
    complete: function (response, status) {
      target.innerHTML = `Update`;
      if (response.status) {
        getData();
        $("#updateLabel").css("display", "block");

        setTimeout(() => {
          $("#updateLabel").css("display", "none");
        }, 2000);
      } else {
        $("#updateLabelerror").css("display", "block");

        setTimeout(() => {
          $("#updateLabelerror").css("display", "none");
        }, 2000);
      }
    },
  });
});

//update initialize
$(document).on("click", ".btnUpdate", (event) => {
  const targetParent = event.target.parentNode.parentNode.children;
  const id = targetParent[0].innerHTML;
  const userName = targetParent[1].innerHTML;
  const email = targetParent[2].innerHTML;
  const password = targetParent[3].innerHTML;
 
  $("#id").val(id);
  $("#userName").val(userName);
  $("#email").val(email);
  $("#password").val(password);
 
});

//insert
$(document).on("click", ".submit", (event) => {
  event.preventDefault();
  const target = event.target;
  const userName = $("#userName").val();
  const email = $("#email").val();
  const password = $("#password").val();
  

  target.innerHTML = `<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Wait`;

  $.ajax({
    url: `http://localhost:${PORT}/BuyerService/api/v2/buyer/register`,
    type: "POST",
    data: JSON.stringify({
      userName: userName,
      email: email,
      password: password,
    
    }),
    contentType: "application/json",
    dataType: "json",
    complete: function (response, status) {
      const newlyAddedItems = {
        userName: userName,
        email: email,
        password: password,
       
      };
      onItemSaveComplete(response, status, newlyAddedItems, target);
    },
  });
});

function onItemSaveComplete(response, status, newlyAddedItems, target) {
  if (response.status == 201) {
    $("#insertLabel").css("display", "block");
    target.innerHTML = `Submit`;
    let tableId = $("#buyer_table");
    let output = `${tableId.html()}`;
    output =
      output +
      `<tr>
      <td>${Number.parseInt(Math.random() * 100)}</td>
      <td>${newlyAddedItems.userName}</td>
      <td>${newlyAddedItems.email}</td>
     <td>${newlyAddedItems.password}</td>
      <td style="display: flex; flex-direction: row; align-itmes: center">
        <button
          type="button"
          class="btn btn-success btnUpdate"
          style="margin-right: 10px"
        >
          Update
        </button>
        <button
          class="btn btn-danger btnRemove"
          type="button"
          style="margin-left: 10px"
        >
          Delete
        </button>
      </td>
    </tr>
    `;
    tableId.html(output);
    setTimeout(() => {
      $("#insertLabel").css("display", "none");
    }, 2000);
  } else {
    $("#insertLabelerror").css("display", "block");
    target.innerHTML = `Submit`;
    setTimeout(() => {
      $("#insertLabelerror").css("display", "none");
    }, 2000);
  }
}