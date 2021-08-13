	var addcontent; //===addcontent
	//Row 추가
	function insRow() {
		addcontent = document.getElementById("addTable");
		var oRow = addcontent.insertRow();
		oRow.onmouseover = function() {
			oTbl.clickedRowIndex = this.rowIndex
		}; //clickedRowIndex - 클릭한 Row의 위치를 확인;
		var oCell = oRow.insertCell();

		//삽입될 Form Tag
		var frmTag = "<div class=writebox><input type=text id=content name=content style=width:70%;height:100px;></div>";
		frmTag += "<input type=button value='삭제' onClick='removeRow()' style='cursor:hand'><br/><br/>";
		oCell.innerHTML = frmTag;
	}
	//Row 삭제
	function removeRow() {
		addcontent.deleteRow(addcontent.clickedRowIndex);
	}

	function frmCheck() {
		var frm = document.form;

		for (var i = 0; i <= frm.elements.length - 1; i++) {
			if (frm.elements[i].name == "content") {
				if (!frm.elements[i].value) {
					alert("내용을 작성해주세요!");
					frm.elements[i].focus();
					return;
				}
			}
		}
	}
	//파일첨부 미리보기
	function viewThumbnail(event) {
		var reader = new FileReader();
		reader.onload = function(event) {
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			document.querySelector("div#image_container").appendChild(img);
		};
		reader.readAsDataURL(event.target.files[0]);
	}