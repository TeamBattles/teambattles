// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_display_rules.dart';
import '../../../models/league_display_rules_request_body.dart';
import './item/with_display_rule_item_request_builder.dart';
import './reorder/reorder_request_builder.dart';
import './upsert/upsert_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\display-rules
class DisplayRulesRequestBuilder extends BaseRequestBuilder<DisplayRulesRequestBuilder> {
    ///  The reorder property
    ReorderRequestBuilder get reorder {
        return ReorderRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The upsert property
    UpsertRequestBuilder get upsert {
        return UpsertRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the teambattles.leagues.item.displayRules.item collection
    ///  [displayRuleId] Display rule ID.
    WithDisplayRuleItemRequestBuilder byDisplayRuleId(String displayRuleId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('displayRuleId', () => displayRuleId);
        return WithDisplayRuleItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    DisplayRulesRequestBuilder clone() {
        return DisplayRulesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DisplayRulesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DisplayRulesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/display-rules", pathParameters) ;
    /// Instantiates a new [DisplayRulesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DisplayRulesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/display-rules", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns display rules configured for a league game. Requires leagues.league_public:read.
    ///  [body] Display rule selector.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueDisplayRules?> postAsync(LeagueDisplayRulesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueDisplayRules>(requestInfo, LeagueDisplayRules.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns display rules configured for a league game. Requires leagues.league_public:read.
    ///  [body] Display rule selector.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(LeagueDisplayRulesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
