// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_add_staff_body.dart';
import '../../../models/tournament_staff_response.dart';
import '../../../models/tournament_write_ack.dart';
import './item/with_user_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\staff
class StaffRequestBuilder extends BaseRequestBuilder<StaffRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.staff.item collection
    ///  [userId] User ID of the staff member to remove.
    WithUserItemRequestBuilder byUserId(String userId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('userId', () => userId);
        return WithUserItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    StaffRequestBuilder clone() {
        return StaffRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StaffRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StaffRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/staff", pathParameters) ;
    /// Instantiates a new [StaffRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StaffRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/staff", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the tournament's delegated staff, resolved by slug. The host is not included - host authority comes from the host record rather than a staff row, so an empty list means no delegated staff, not no organizers. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); adding and removing staff requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentStaffResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentStaffResponse>(requestInfo, TournamentStaffResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Grants a user the ADMIN or MODERATOR staff role on the tournament. Requires the tournaments staff capability and ADMIN authority - strictly higher than the MANAGER floor for reading the roster, so a tournament MODERATOR answers 403 and cannot promote themselves. Upserts by user: posting a role for someone who already holds a staff row updates that row instead of creating a second one, so this endpoint is safely retryable and also serves as the change-role operation. A MODERATOR gains the manager-floor endpoints (application review, participant removal and disqualification, free-agent pool moderation) but none of the admin-floor ones.
    ///  [body] Tournament staff addition payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentAddStaffBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentWriteAck>(requestInfo, TournamentWriteAck.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the tournament's delegated staff, resolved by slug. The host is not included - host authority comes from the host record rather than a staff row, so an empty list means no delegated staff, not no organizers. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); adding and removing staff requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Grants a user the ADMIN or MODERATOR staff role on the tournament. Requires the tournaments staff capability and ADMIN authority - strictly higher than the MANAGER floor for reading the roster, so a tournament MODERATOR answers 403 and cannot promote themselves. Upserts by user: posting a role for someone who already holds a staff row updates that row instead of creating a second one, so this endpoint is safely retryable and also serves as the change-role operation. A MODERATOR gains the manager-floor endpoints (application review, participant removal and disqualification, free-agent pool moderation) but none of the admin-floor ones.
    ///  [body] Tournament staff addition payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentAddStaffBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
