// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/delete_org_response.dart';
import '../../models/error.dart';
import '../../models/update_org_body.dart';
import '../../models/update_org_response.dart';
import './matches/matches_request_builder.dart';
import './members/members_request_builder.dart';
import './ownership/ownership_request_builder.dart';
import './stats/stats_request_builder.dart';
import './teams/teams_request_builder.dart';
import './with_identifier_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs\{identifier}
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    ///  The matches property
    MatchesRequestBuilder get matches {
        return MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The members property
    MembersRequestBuilder get members {
        return MembersRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The ownership property
    OwnershipRequestBuilder get ownership {
        return OwnershipRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The stats property
    StatsRequestBuilder get stats {
        return StatsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The teams property
    TeamsRequestBuilder get teams {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithIdentifierItemRequestBuilder clone() {
        return WithIdentifierItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}", pathParameters) ;
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes an organization. The caller (key owner) must be the organization owner. Requires orgs.profile:read-write.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DeleteOrgResponse?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DeleteOrgResponse>(requestInfo, DeleteOrgResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns an API-safe organization profile projection. Active organization members are treated as public visibility for their own organization. Requires orgs.profile:read.
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
    /// Updates an organization's profile fields. The caller (key owner) must be an organization owner or admin. Requires orgs.profile:read-write.
    ///  [body] Fields to update on the organization. All optional.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<UpdateOrgResponse?> patchAsync(UpdateOrgBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<UpdateOrgResponse>(requestInfo, UpdateOrgResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes an organization. The caller (key owner) must be the organization owner. Requires orgs.profile:read-write.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Returns an API-safe organization profile projection. Active organization members are treated as public visibility for their own organization. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Updates an organization's profile fields. The caller (key owner) must be an organization owner or admin. Requires orgs.profile:read-write.
    ///  [body] Fields to update on the organization. All optional.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPatchRequestInformation(UpdateOrgBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.patch, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
