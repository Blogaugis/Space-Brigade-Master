

function array_iter_length(choice_array, offset, length){
	if (length == 0){
		if (offset==0){
			length = array_length(choice_array);
		}
		else if (offset){
			length = array_length(choice_array) - offset;
		} else {
			length = offset*-1;
		}
	}
	return length;
}
function array_sum(choice_array,start_value=0, offset=0,length=0){
	function arraysum(_prev, _curr, _index) {
	    return _prev + _curr;
	}

	length = array_iter_length(choice_array,offset,length);

	array_reduce(choice_array,arraysum,start_value,offset)
}

function array_set_value(choice_array, value){
	for (i=0;i<array_length(choice_array);i++){
		choice_array[@ i] = value;
	}
}

function array_replace_value(choice_array, value, r_value){
	for (i=0;i<array_length(choice_array);i++){
		if (choice_array[i] == value ){
			choice_array[@ i] = r_value;
		}
	}
}

function array_random(choice_array){
	return choice_array[irandom(array_length(choice_array) - 1)];
}