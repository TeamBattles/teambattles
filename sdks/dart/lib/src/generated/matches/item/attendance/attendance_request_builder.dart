// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/update_attendance_request_body.dart';
import '../../../models/update_attendance_response.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\attendance
class AttendanceRequestBuilder extends BaseRequestBuilder<AttendanceRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    AttendanceRequestBuilder clone() {
        return AttendanceRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AttendanceRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttendanceRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/attendance", pathParameters) ;
    /// Instantiates a new [AttendanceRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AttendanceRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/attendance", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Updates the personal API key owner's own attendance status for a match. The owner must already be rostered in the match; the platform may swap active and bench players automatically. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Updates the API key owner's own attendance status for a match.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<UpdateAttendanceResponse?> postAsync(UpdateAttendanceRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<UpdateAttendanceResponse>(requestInfo, UpdateAttendanceResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates the personal API key owner's own attendance status for a match. The owner must already be rostered in the match; the platform may swap active and bench players automatically. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Updates the API key owner's own attendance status for a match.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(UpdateAttendanceRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
