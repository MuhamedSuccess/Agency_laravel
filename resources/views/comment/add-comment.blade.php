<h4>Add comment</h4>
<form>
    @csrf
    <div class="form-group">
        <textarea class="form-control" id="body" name="body"></textarea>
        <input type="hidden" name="trip_id" id="trip_id" value="{{ $trip->id }}" />
    </div>
    <div class="form-group">
        <button id="submit" class="btn btn-success">Add Comment</button>
    </div>
</form>

<script>
    $(document).ready(function(){

        $("#submit").click(function(e){
            e.preventDefault();

             $.ajaxSetup({
                  headers: {
                      'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                  }
              });

            $.ajax({
                url: "{{url('comment/create')}}",
                method: 'POST',
                data: {
                    body: $("#body").val(),
                    trip_id: $("#trip_id").val(),
                    // parent_id: $("#parent_id").val(),
                   
                },
                success: function(result){
                    console.log(result);
                }

            });

        });
    });
</script>