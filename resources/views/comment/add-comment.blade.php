<h4>Add Review</h4>
<form method="post" action="{{ route('comments.store'   ) }}">
    @csrf
    <div class="form-group">
        <textarea class="form-control" name="body"></textarea>
        <input type="hidden" name="trip_id" value="{{ $trip->id }}" /> <br>

        <select class="star-rating" name="rating">
            <option name="rating" value="">Select a rating</option>
            <option name="rating" value="5">Excellent</option>
            <option name="rating" value="4">Very Good</option>
            <option name="rating" value="3">Average</option>
            <option name="rating" value="2">Poor</option>
            <option name="rating" value="1">Terrible</option>
        </select>
          
          <!-- rating.js file -->

    </div>
    <div class="form-group">
        <input type="submit" class="btn btn-success" value="Add Review" />
    </div>
</form>

