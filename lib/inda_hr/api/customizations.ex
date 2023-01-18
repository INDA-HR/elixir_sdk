# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Api.Customizations do
  @moduledoc """
  API calls for all endpoints tagged `Customizations`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder

  @doc """
  Customize Resumes
   It is possible to customize the resume structure to add fields of various types to it. These can be useful to store user information or to use refined filters in queries.  Fields can be added at anytime but **they cannot be removed** and **field types cannot be changed**! This API call accepts a list of items under *Fields*, each item has the following properties:  + **Field**: Dot-notation position of the desired field in the items. + **Type**: One of the field types described below. + **Params**: Each field type accepts different parameters and they are explained in the code blocks below it.  **String types**  The family of types for long text and singular keywords.  + *keyword*: A short string value supporting only exact-match term queries  ``` {   \"Boost\": Optional[float]          # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[str]        # Items where this field is missing or null will be indexed with this value instead } ```  + *text*: Long varied sentences and pieces of text; tokenized and analyzed, it supports complex and generic match queries  ``` {   \"Boost\": Optional[float]          # Multiplicative score boost when executing queries on this field, defaults to 1.0 } ```  + *constant_keyword*: A keyword value that must be the same in all documents where it's present  ``` {   \"Value\": Optional[str]      # The value to assign to this field in documents, it will default to the value of the first indexed document if not provided } ```  + *wildcard*: Similar to keyword values, but optimized to support wildcard queries with glob-like patterns  ``` {   \"NullValue\": Optional[str]       # Items where this field is missing or null will be indexed with this value instead } ```  **Numbers**  Numeric types used to express amounts.  + *long*: Long (64bits) integer.  ``` {   \"Boost\": Optional[float]            # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[int]          # Items where this field is missing or null will be indexed with this value instead   \"Coerce\": Optional[bool]            # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true   \"IgnoreMalformed\": Optional[bool]   # Whether malformed and uncastable values should be ignored or throw an exception, which is the default } ```  + *integer*: Normal (32bits) integer.  ``` {   \"Boost\": Optional[float]            # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[int]          # Items where this field is missing or null will be indexed with this value instead   \"Coerce\": Optional[bool]            # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true   \"IgnoreMalformed\": Optional[bool]   # Whether malformed and uncastable values should be ignored or throw an exception, which is the default } ```  + *short*: Short (16bits) integer.  ``` {   \"Boost\": Optional[float]            # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[int]          # Items where this field is missing or null will be indexed with this value instead   \"Coerce\": Optional[bool]            # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true   \"IgnoreMalformed\": Optional[bool]   # Whether malformed and uncastable values should be ignored or throw an exception, which is the default } ```  + *byte*: Single byte (8bits) integer.  ``` {   \"Boost\": Optional[float]            # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[int]          # Items where this field is missing or null will be indexed with this value instead   \"Coerce\": Optional[bool]            # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true   \"IgnoreMalformed\": Optional[bool]   # Whether malformed and uncastable values should be ignored or throw an exception, which is the default } ```  + *double*: Double precision (64bits) floating point number.  ``` {   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[float]            # Items where this field is missing or null will be indexed with this value instead   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true   \"IgnoreMalformed\": Optional[bool]       # Whether malformed and uncastable values should be ignored or throw an exception, which is the default } ```  + *float*: Single precision (32bits) floating point number.  ``` {   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[float]            # Items where this field is missing or null will be indexed with this value instead   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true   \"IgnoreMalformed\": Optional[bool]       # Whether malformed and uncastable values should be ignored or throw an exception, which is the default } ```  + *half_float*: Half precision (16bits) floating point number.  ``` {   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[float]            # Items where this field is missing or null will be indexed with this value instead   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true   \"IgnoreMalformed\": Optional[bool]       # Whether malformed and uncastable values should be ignored or throw an exception, which is the default } ```  + *scaled_float*: A floating point number backed by a long integer, scaled by a fixed double factor.  ``` {   \"ScalingFactor\": float                  # Scaling factor   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[int]              # Items where this field is missing or null will be indexed with this value instead   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true   \"IgnoreMalformed\": Optional[bool]       # Whether malformed and uncastable values should be ignored or throw an exception, which is the default } ```  **Objects and relational types**  Representations of data structures, i.e. lists and maps/dictionaries.  + *object*: A JSON object.  ``` {   \"Dynamic\": Optional[bool]   # Whether the mapping for this object can be further modified in the future, defaults to true (and you should leave it like that) } ```  + *flattened*: An entire JSON object as a single field value.  ``` {   \"Dynamic\": Optional[bool]   # Whether the mapping for this object can be further modified in the future, defaults to true (and you should leave it like that)   \"Boost\": Optional[float]    # Multiplicative score boost when executing queries on this field and its subfields, defaults to 1.0 } ```  + *nested*: A JSON object that preserves the relationship between its subfields.  ``` {   \"Dynamic\": Optional[bool]   # Whether the mapping for this object can be further modified in the future, defaults to true (and you should leave it like that) } ```  **Range types**  Fields defined as ranges of values.  + *integer_range*: A range of integers (32bits).  ``` {   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true } ```  + *long_range*: A range of long (64bits) integers.  ``` {   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true } ```  + *float_range*: A range of standard precision (32bits) floating point numbers.  ``` {   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true } ```  + *double_range*: A range of double precision (64bits) floating point numbers.  ``` {   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true } ```  + *date_range*: A range of dates, using ISO 8601 standard ([YYYY]-[MM]-[DD]T[HH]:[MM]:[SS].[ms]+[HH:MM]).  ``` {   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true } ```  + *ip_range*: A range of IP addresses.  ``` {   \"Boost\": Optional[float]                # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"Coerce\": Optional[bool]                # Whether ambiguous values should be cast to the required field type, e.g.: str(\"20\") to int(20), defaults to true } ```  **Spatial data types**  + *geo_point*: Latitude and longitude points, each field must be a map/dictionary containing \"lat\" (latitude) and \"lon\" (longitude) properties, expressed with signed floating point values.  ``` {   \"IgnoreMalformed\": Optional[bool]          # Whether malformed and values should be ignored or throw an exception, which is the default   \"NullValue\": Optional[geo_point]           # Items where this field is missing or null will be indexed with this value instead } ```  + *point*: Arbitrary cartesian points, each field must be a map/dictionary containing \"x\" and \"y\" properties, expressed with signed floating point values.  ``` {   \"IgnoreMalformed\": Optional[bool]          # Whether malformed and values should be ignored or throw an exception, which is the default   \"NullValue\": Optional[point]               # Items where this field is missing or null will be indexed with this value instead } ```  **Other types**  + *binary*: Binary value encoded as a Base64 string.  + *boolean*: true and false values.  ``` {   \"Boost\": Optional[float]          # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[bool]      # Items where this field is missing or null will be indexed with this value instead } ```  + *date*: Date type, using ISO 8601 standard ([YYYY]-[MM]-[DD]T[HH]:[MM]:[SS].[ms]+[HH:MM]).  ``` {   \"Boost\": Optional[float]              # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"Format\": Optional[str]               # Date format, if different from ISO 8601 (which is the default), we STRONGLY recommend to leave this untouched   \"Locale\": Optional[str]               # Locale to use for dates names or abbreviations, defaults to index locale if present or host locale otherwise   \"IgnoreMalformed\": Optional[bool]     # If true, malformed dates are ignored. If false they throw an exception. Defaults to false.   \"NullValue\": Optional[date]           # Items where this field is missing or null will be indexed with this value instead } ```  + *alias*: Defines an alias for an existing field.  ``` {   \"Path\": str          # Dot-notation position of the field the alias refers to } ```  + *ip*: IPv4 and IPv6 addresses.  ``` {   \"Boost\": Optional[float]          # Multiplicative score boost when executing queries on this field, defaults to 1.0   \"NullValue\": Optional[ip]         # Items where this field is missing or null will be indexed with this value instead } ```  + *histogram*: Pre-aggregated numerical values.  + *dense_vector*: Records dense vectors of float values.  ``` {   \"Dims\": int          # The dimensionality of the vector, up to a maximum of 512 } ```  + *rank_feature*: Records a numeric feature to boost hits at query time.  ``` {   \"PositiveScoreImpact\": Optional[bool]          # Determines whether the rank_feature value affects score positively or negatively, defaults to true (positive) } ```  + *rank_features*: Records multiple named numeric features to boost hits at query time.  ``` {   \"PositiveScoreImpact\": Optional[bool]          # Determines whether the rank_feature value affects score positively or negatively, defaults to true (positive) } ``` 

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `indexname` (String.t): 
  - `custom_fields` (CustomFields): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, inda_hr.Model.CustomizedFields.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec customize_resumes_post(Tesla.Env.client, String.t, inda_hr.Model.CustomFields.t, keyword()) :: {:ok, inda_hr.Model.HttpValidationError.t} | {:ok, inda_hr.Model.CustomizedFields.t} | {:error, Tesla.Env.t}
  def customize_resumes_post(connection, indexname, custom_fields, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/index/#{indexname}/resumes/customize/")
      |> add_param(:body, :body, custom_fields)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.CustomizedFields{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Get Resume Customizations
   A function to retrieve previously customized mappings from indices. 

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `indexname` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, inda_hr.Model.MappingResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_resume_customizations_get(Tesla.Env.client, String.t, keyword()) :: {:ok, inda_hr.Model.MappingResponse.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def get_resume_customizations_get(connection, indexname, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/hr/v2/index/#{indexname}/resumes/mapping/")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.MappingResponse{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end
end
