<!-- ================================================
Scripts
================================================ -->

<!-- jQuery Library -->
<script type="text/javascript" src="/static/assets/js/jquery-1.11.2.min.js"></script>

<!--  parsely.js -->
<script type="text/javascript" src="/static/assets/js/parsley.js"></script>

<!-- my custom.js -->
<script type="text/javascript" src="/static/assets/js/custom.js"></script>

<!--materialize js-->
<script type="text/javascript" src="/static/assets/js/materialize.js"></script>
<!-- Tinymce -->
<script src="assets/tinymce/js/tinymce/tinymce.min.js"></script>
<script src="assets/tinymce/js/tinymce/themes/modern/theme.min.js"></script>

<!-- Dropify -->
<link href="/static/assets/dropify/css/dropify.min.css" type="text/css" rel="stylesheet">

<!--prism-->
<script type="text/javascript" src="/static/assets/js/prism.js"></script>

<!--scrollbar-->
<script type="text/javascript" src="/static/assets/js/plugins/perfect-scrollbar/perfect-scrollbar.min.js"></script>

<!--plugins.js - Some Specific JS codes for Plugin Settings-->
<script type="text/javascript" src="/static/assets/js/plugins.js"></script>

<script>
    tinymce.init({
        selector: '.editor',
        height: 150,
        plugins: [

        ],
        toolbar: 'insertfile undo redo | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent',
        content_css: [
            '{{ URL::asset("assets/tinymce/js/tinymce/skins/lightgray/skin.min.css") }}'

        ]
    });
</script>