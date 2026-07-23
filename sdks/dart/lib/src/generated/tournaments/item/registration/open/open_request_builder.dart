// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/tournament_open_registration_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\registration\open
class OpenRequestBuilder extends BaseRequestBuilder<OpenRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    OpenRequestBuilder clone() {
        return OpenRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OpenRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OpenRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration/open", pathParameters) ;
    /// Instantiates a new [OpenRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OpenRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration/open", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Moves an APPROVED tournament to REGISTRATION_OPEN. Takes no request body. Registration can only be opened from DRAFT or REGISTRATION_CLOSED; any other status answers 400. A tournament that is not APPROVED answers 403 error_approval_required. Side effects worth knowing about: a PUBLIC tournament becomes publicly listed, a `tournament.registration_opened` webhook is emitted, and when check-in is required and a start time is set the check-in announcement is scheduled. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentOpenRegistrationResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentOpenRegistrationResponse>(requestInfo, TournamentOpenRegistrationResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Moves an APPROVED tournament to REGISTRATION_OPEN. Takes no request body. Registration can only be opened from DRAFT or REGISTRATION_CLOSED; any other status answers 400. A tournament that is not APPROVED answers 403 error_approval_required. Side effects worth knowing about: a PUBLIC tournament becomes publicly listed, a `tournament.registration_opened` webhook is emitted, and when check-in is required and a start time is set the check-in announcement is scheduled. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
