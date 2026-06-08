// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_rules.dart';
import '../../../models/rules_request_body.dart';
import './applyTemplate/apply_template_request_builder.dart';
import './update/update_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\rules
class RulesRequestBuilder extends BaseRequestBuilder<RulesRequestBuilder> {
    ///  The applyTemplate property
    ApplyTemplateRequestBuilder get applyTemplate {
        return ApplyTemplateRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The update property
    UpdateRequestBuilder get update {
        return UpdateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    RulesRequestBuilder clone() {
        return RulesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RulesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RulesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/rules", pathParameters) ;
    /// Instantiates a new [RulesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RulesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/rules", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the game rules and points configuration for a league + game, resolved by league slug. Requires the leagues.league_public:read permission.
    ///  [body] Game selector for league rules and points config.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueRules?> postAsync(RulesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueRules>(requestInfo, LeagueRules.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the game rules and points configuration for a league + game, resolved by league slug. Requires the leagues.league_public:read permission.
    ///  [body] Game selector for league rules and points config.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(RulesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
