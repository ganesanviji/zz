<script>
$(document).ready(function () {
$(“#new_user”).validate({
debug: true,
rules: {

“sampleform[confirm_password]“: {required: true, equalTo: “#sampleform_password”}
}
});
});
</script>