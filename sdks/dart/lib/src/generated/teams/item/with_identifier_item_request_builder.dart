// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/disband_team_response.dart';
import '../../models/error.dart';
import '../../models/update_team_body.dart';
import '../../models/update_team_response.dart';
import './captaincy/captaincy_request_builder.dart';
import './matches/matches_request_builder.dart';
import './members/members_request_builder.dart';
import './with_identifier_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \teams\{identifier}
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    ///  The captaincy property
    CaptaincyRequestBuilder get captaincy {
        return CaptaincyRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The matches property
    MatchesRequestBuilder get matches {
        return MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The members property
    MembersRequestBuilder get members {
        return MembersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithIdentifierItemRequestBuilder clone() {
        return WithIdentifierItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams/{identifier}", pathParameters) ;
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams/{identifier}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Disbands a team (soft-deletes it and deactivates its members). The caller (key owner) must be the team captain. Requires teams.profile:read-write.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DisbandTeamResponse?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DisbandTeamResponse>(requestInfo, DisbandTeamResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WithIdentifierGetResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WithIdentifierGetResponse>(requestInfo, WithIdentifierGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates a team's profile fields. The caller (key owner) must be the team captain. Requires teams.profile:read-write.
    ///  [body] Fields to update on the team. All optional.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<UpdateTeamResponse?> patchAsync(UpdateTeamBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<UpdateTeamResponse>(requestInfo, UpdateTeamResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Disbands a team (soft-deletes it and deactivates its members). The caller (key owner) must be the team captain. Requires teams.profile:read-write.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Updates a team's profile fields. The caller (key owner) must be the team captain. Requires teams.profile:read-write.
    ///  [body] Fields to update on the team. All optional.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPatchRequestInformation(UpdateTeamBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.patch, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
