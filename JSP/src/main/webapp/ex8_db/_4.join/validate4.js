$(document).ready(function() {

	
	
	
	$('form').submit(function() {
		//id ���� ��ȿ�� �˻�
		if ($.trim($('#id').val()) == '') {
			alert('���̵� �Է��ϼ���');
			$('#id').focus();
			return false;
		}
		


		//�н����� ���� ��ȿ�� �˻�
		if ($('#pass').val().trim() == '') {
			alert("�н����带 �Է��ϼ���")
			$('#pass').focus();
			return false;
		}

		//�ֹι�ȣ ���ڸ� ��ȿ���˻�
		if ($('#jumin1').val().trim() == '') {
			alert("�ֹι�ȣ ���ڸ��� �Է��ϼ���");
			$('#jumin1').focus();
			return false;
		}

		//�ֹι�ȣ ���ڸ� 6�ڸ� ��ȿ���˻�
		if ($('#jumin1').val().length != 6) {
			alert("�ֹι�ȣ ���ڸ� 6�ڸ��� �Է��ϼ���");
			$('#jumin1').val('');
			$('#jumin1').focus();
			return false;
		}

		//�ֹι�ȣ ���ڸ� ��ȿ���˻�
		if ($('#jumin2').val().trim() == '') {
			alert("�ֹι�ȣ ���ڸ��� �Է��ϼ���");
			$('jumin2').focus();
			return false;
		}

		//�ֹι�ȣ ���ڸ� 7�ڸ� ��ȿ�� �˻�
		if ($('#jumin2').val().length != 7) {
			alert("�ֹι�ȣ ���ڸ� 7�ڸ��� �Է��ϼ���");
			$('#jumin2').val('');
			$('#jumin2').focus();
			return false;
		}

		//�̸��� ���� ��ȿ�� �˻�
		if ($('email').val() == '') {
			alert('�̸����� �Է��ϼ���');
			$('email').focus();
			return false;
		}

		//������ ���� ��ȿ�� �˻�
		if ($('#domain').val() == "") {
			alert("�������� �Է��ϼ���");
			$('#domain').focus();
			return false;
		}

		//���� ��ư ���� ��ȿ�� �˻�
		var genders = $('input[type=radio]:checked');
		if (genders.length == 0) {
			alert("��, ���� �ϳ��� �������ּ���");
			return false;
		}

		//��̸� �ΰ��̻�  üũ�ϵ��� �ϴ� ��ȿ�� �˻�
		var cnt = $('input:checkbox:checked').length;


		/*var cnt = 0;
		var hobbies = $('input[name=hobby]:checked');
		for (var i = 0; i < hobbies.length; i++) {
			if (hobbies[i].checked)
				cnt++;
		}*/

		if (cnt < 2) {
			alert("��̸� �ΰ� �̻� �������ּ���");
			return false;
		}

		//�����ȣ ���� ��ȿ�� �˻�
		if ($('#post1').val() == "") {
			alert("�����ȣ�� �Է����ּ���");
			post1.focus();
			return false;
		}
		
		

		//�����ȣ ���� ��ȿ�� �˻�
		if (!$.isNumeric($('#post1').val())) {
			alert('�����ȣ�� ���ڸ� �Է� �����մϴ�.');
			$('#post1').val('').focus();
			return false;
		}
		
		//�����ȣ �ټ��ڸ� ��ȿ�� �˻�
		if ($.trim($('#post1').val()).length!=5){
			alert('�����ȣ�� �ټ��ڸ��Դϴ�');
			return false;
		}
		
		//�ּ� ���� ��ȿ�� �˻�
		if ($('#address').val() == "") {
			alert("�ּҸ� �Է����ּ���");
			address.focus();
			return false;
		}

		//�ڱ�Ұ� ���� ��ȿ�� �˻�
		if ($('#intro').val() == "") {
			alert("�ڱ�Ұ��� �Է����ּ���");
			intro.focus();
			return false;
		}


	})//myform submit


	//���ڸ� ���ԽĿ� ���߸� ���ڸ��� ��Ŀ�� �̵�
	//<input  type=text size=6 maxLength=6 name=jumin1 id=jumin1  onKeyup="move()" placeholder='�ֹι�ȣ ���ڸ�'>
	$('#jumin1').on('keyup', function() {
		var jumin1 = $("#jumin1");
		var jumin2 = $("#jumin2");

		//�ֹι�ȣ ���ڸ� 6�ڸ��� ���
		if (jumin1.val().trim().length == 6) {
			pattern = /^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])$/
			if (pattern.test(jumin1.val())) {
				jumin2.focus();
			} else {
				alert("���� �Ǵ� ���Ŀ� �°� �Է��ϼ���");
				jumin1.val('');
				jumin1.focus();
				return false;
			}
		}
	})//keyup jumin1

	//�ֹι�ȣ ���ڸ� ù ���� ���� ��������
	//<input type=text size=7 maxLength=7 name=jumin2 id=jumin2   onKeyup="move()" placeholder='�ֹι�ȣ ���ڸ�'>
	$('#jumin2').on('keyup', function() {
		if ($(this).val().trim().length == 7) {
			pattern = /^[1234][0-9]{6}$/;
			if (pattern.test($(this).val())) {
				//�ֹι�ȣ ���ڸ��� ���� ���ڿ��� ���� ���� ��ư �ڵ�����
				var c = Number($(this).val().substring(0, 1));
				var index = (c - 1) % 2; //c=1 or c=3 -> index=0 -> 1 -> "gender1"
				//c=2 or c=4 -> index=1 ->2 -> "gender2"
				$('input[type=radio]').eq(index).prop('checked', true);
			} else {
				alert('���� �Ǵ� ���Ŀ� �°� �Է��ϼ���');
				$(this).val('');
				$(this).focus();
			}
		}
	})//keyup jumin2

	//������ ������
	//select �±׿��� ������ ������ ����
	$('#sel').on('change', function() {

		if ($(this).val() == "") {//�����Է� ���õ� ���
			$('#domain').prop('readonly', false);
			$('#domain').val('').focus();
		} else { //option �߿��� ������ ���
			$('#domain').prop('readonly', true); //�����Ұ�
			$('#domain').val($('#sel').val());
		}
	})//onchange sel

	//<input type=button value="����˻�" onclick="post()">
	$('input[value="����˻�"]').click(function() {
		Postcode();
	})//onclick input value=����˻�
	
	
	//function Postcode
	function Postcode() {
        new daum.Postcode({
            oncomplete: function(data) {
            	console.log(data.zonecode)
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
 
                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
                var extraRoadAddr = ''; // ���θ� ������ �ּ� ����
 
                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                
                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById("post1").value=data.zonecode;
                document.getElementById("address").value=fullRoadAddr;
            }
        }).open();
    }//function Postcode()
	
})//ready