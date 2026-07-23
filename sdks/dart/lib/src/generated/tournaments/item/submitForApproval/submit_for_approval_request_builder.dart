// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_submit_for_approval_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\submit-for-approval
class SubmitForApprovalRequestBuilder extends BaseRequestBuilder<SubmitForApprovalRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    SubmitForApprovalRequestBuilder clone() {
        return SubmitForApprovalRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SubmitForApprovalRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SubmitForApprovalRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/submit-for-approval", pathParameters) ;
    /// Instantiates a new [SubmitForApprovalRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SubmitForApprovalRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/submit-for-approval", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentSubmitForApprovalResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentSubmitForApprovalResponse>(requestInfo, TournamentSubmitForApprovalResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Submits a DRAFT tournament for platform review. Takes no request body. Hosting eligibility is re-checked at submit time and answers 403 error_not_eligible_to_host when the key owner may no longer host. A tournament already AWAITING_APPROVAL answers 409 error_approval_pending, and a tournament that is not a DRAFT answers 400. Note the auto-approval shortcut: while the platform approval mode is `public_listing_only`, an UNLISTED tournament is approved immediately and `autoApproved` is true. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
