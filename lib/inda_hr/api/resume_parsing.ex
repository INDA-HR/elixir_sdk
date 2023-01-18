# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Api.ResumeParsing do
  @moduledoc """
  API calls for all endpoints tagged `ResumeParsing`.
  """

  alias inda_hr.Connection
  import inda_hr.RequestBuilder

  @doc """
  Anonymize CV
   This method allows you to anonymize a CV/resume (only textual documents, not scanned documents or images) by  covering the main sensitive information in the document. Output is always a PDF file containing an anonymized copy of the source document.  Masked entities are: <code style='color: #333333; opacity: 0.9'>given name</code>, <code style='color: #333333; opacity: 0.9'>family name</code>, <code style='color: #333333; opacity: 0.9'>birthdate</code>, <code style='color: #333333; opacity: 0.9'>telephone numbers</code>, <code style='color: #333333; opacity: 0.9'>emails</code>, <code style='color: #333333; opacity: 0.9'>links</code>, <code style='color: #333333; opacity: 0.9'>gender</code>, <code style='color: #333333; opacity: 0.9'>nationality</code>, <code style='color: #333333; opacity: 0.9'>profile picture</code>.  Supported extensions: <code style='color: #333333; opacity: 0.9'>pdf</code>, <code style='color: #333333; opacity: 0.9'>doc</code>, <code style='color: #333333; opacity: 0.9'>docx</code>, <code style='color: #333333; opacity: 0.9'>odt</code>, <code style='color: #333333; opacity: 0.9'>txt</code>, <code style='color: #333333; opacity: 0.9'>html</code>, <code style='color: #333333; opacity: 0.9'>pptx</code>, <code style='color: #333333; opacity: 0.9'>rtf</code>.  

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `base_file_doc` (BaseFileDoc): 
  - `opts` (keyword): Optional parameters
    - `:src_lang` (String.t): Language to use to interpret the text. If missing, language detection is performed.

  ### Returns

  - `{:ok, inda_hr.Model.DocumentAnonymizationResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec anonymize_cv_post(Tesla.Env.client, inda_hr.Model.BaseFileDoc.t, keyword()) :: {:ok, inda_hr.Model.DocumentAnonymizationResponse.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:error, Tesla.Env.t}
  def anonymize_cv_post(connection, base_file_doc, opts \\ []) do
    optional_params = %{
      :src_lang => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/parse/resume/anonymize/")
      |> add_param(:body, :body, base_file_doc)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.DocumentAnonymizationResponse{}},
      {422, %inda_hr.Model.ErrorModel{}},
      {415, %inda_hr.Model.ErrorModel{}},
      {500, %inda_hr.Model.ErrorModel{}},
      {503, %inda_hr.Model.ErrorModel{}},
      {400, %inda_hr.Model.ErrorModel{}}
    ])
  end

  @doc """
  Bulk Map Entity
   This method wraps the [Map Entity](https://api.inda.ai/hr/docs/v2/#operation/map_entity__POST) method and allows a user to send all the entities to be mapped in one API call, e.g., for pagination purposes. Note that the request does not raise any Validation Error on the input data but instead it returns all the errors in the response. 

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `multi_entity_input` (MultiEntityInput): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, inda_hr.Model.MultiEntityMapping.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec bulk_map_entity_post(Tesla.Env.client, inda_hr.Model.MultiEntityInput.t, keyword()) :: {:ok, inda_hr.Model.MultiEntityMapping.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def bulk_map_entity_post(connection, multi_entity_input, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/keywords/bulk/map/entity/")
      |> add_param(:body, :body, multi_entity_input)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.MultiEntityMapping{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Map Entity
   This method maps an input string (ideally an entity extracted with the [Parse Resume](https://api.inda.ai/hr/docs/v2/#operation/parse_resume__POST) method) to the most similar string among a list of strings chosen by the user *(AllowedOutputs)*.  Note that, after a best match has been identified, it is actually presented as output only when it passes a *similarity check*, which takes into account the similarity of this best match with the input string, but also the similarity of the other elements of *allowed outputs* with the input string (namely, if many allowed outputs have a comparable similarity level, the *similarity check* is not passed, because there is not a clear winner). When the severity check is passed, the *id* of the best match is given in output (see the payload and response examples on the right); otherwise, an empty string is returned instead of the *id*. The severity of the similarity check can be controlled via the *severity* parameter, which takes value between <code style='color: #333333; opacity: 0.9'>0</code> and <code style='color: #333333; opacity: 0.9'>1</code>: a user who prefers to obtain the best match also when there is not guarantee it actually corresponds to the input string should set *severity* to a low value (i.e., close to <code style='color: #333333; opacity: 0.9'>0</code>); vice versa, a user who prefers to have a response only when there is a high confidence in the correspondence should set *severity* to a large value (i.e., close to <code style='color: #333333; opacity: 0.9'>1</code>); an intermediate value (such as the default value <code style='color: #333333; opacity: 0.9'>0.5</code>) is appropriate in many situations.  The method has been specialized for different entity types, and for each of them it performs an analysis optimized over the specific type. The currently supported entity types are <code style='color: #333333; opacity: 0.9'>Data.EducationExperiences.Organization.OrganizationName</code> and <code style='color: #333333; opacity: 0.9'>Data.EducationExperiences.EducationTitle</code>. If the entity type is a string that does not match any of the supported entity types, the mapping is performed using a non-specialized method. 

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `entity_input` (EntityInput): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, inda_hr.Model.EntityMapping.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec map_entity_post(Tesla.Env.client, inda_hr.Model.EntityInput.t, keyword()) :: {:ok, inda_hr.Model.EntityMapping.t} | {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.HttpValidationError.t} | {:error, Tesla.Env.t}
  def map_entity_post(connection, entity_input, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/keywords/map/entity/")
      |> add_param(:body, :body, entity_input)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.EntityMapping{}},
      {400, %inda_hr.Model.ErrorModel{}},
      {422, %inda_hr.Model.HttpValidationError{}}
    ])
  end

  @doc """
  Parse Resume
   This method performs the *Information Extraction* from a resume, i.e., it recognizes the *named entities* contained in a given resume and reconstructs the relations between them, returning a structured information in the form of a json file. The method requires in input the *binary* and the *extension* of the file and automatically performs many steps: (*i*) Document Layout Analysis, (*ii*) Optical Character Recognition (if the input document is an image), (*iii*) Text Extraction, (*iv*) Named Entity Recognition, (*v*) Relation Extraction, and, finally, (*vi*) Face Recognition (which is carried out to identify, if present, the candidate photo).  The information provided in the output (see the schema below and the example on the right) can be used as structured data input for the [Add Resume](https://api.inda.ai/hr/docs/v2/#operation/add_resume__POST) method (some adjustments may be required).  The allowed file extensions are  <code style='color: #333333; opacity: 0.9'>pdf</code>, <code style='color: #333333; opacity: 0.9'>doc</code>, <code style='color: #333333; opacity: 0.9'>docx</code>, <code style='color: #333333; opacity: 0.9'>odt</code>, <code style='color: #333333; opacity: 0.9'>txt</code>, <code style='color: #333333; opacity: 0.9'>html</code>, <code style='color: #333333; opacity: 0.9'>pptx</code>, <code style='color: #333333; opacity: 0.9'>rtf</code>, <code style='color: #333333; opacity: 0.9'>jpg</code>, <code style='color: #333333; opacity: 0.9'>jpeg</code>, <code style='color: #333333; opacity: 0.9'>png</code>, <code style='color: #333333; opacity: 0.9'>tif</code>, <code style='color: #333333; opacity: 0.9'>tiff</code> .  Please consider to use the [Info Extraction Feedback](https://api.inda.ai/hr/docs/v2/#operation/info_extraction_feedback__POST) to inform us about differences  between user's expectations and the actual data provided as output by INDA engine. It is very useful to improve our algorithms' performances.  

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `base_file` (BaseFile): 
  - `opts` (keyword): Optional parameters
    - `:src_lang` (String.t): Optional. Language to use to extract data from the *Attachment.CV.File*.If missing, the detected language from the input file text is assumed as `src_lang`.
    - `:dst_lang` (String.t): Optional. Destination language in which the following *Data* entities are translated: *Skills*, *WorkExperiences.Skills*, *JobTitles*, *WorkExperiences.PositionTitle* and *Languages*.If missing, the input or detected `src_lang` is assumed as `dst_lang`.
    - `:graphics` (boolean()): Whether to read skill graphs such as bars, pie charts, and symbols.

  ### Returns

  - `{:ok, inda_hr.Model.ExtractionItem.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec parse_resume_post(Tesla.Env.client, inda_hr.Model.BaseFile.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.ExtractionItem.t} | {:error, Tesla.Env.t}
  def parse_resume_post(connection, base_file, opts \\ []) do
    optional_params = %{
      :src_lang => :query,
      :dst_lang => :query,
      :graphics => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/parse/resume/data/")
      |> add_param(:body, :body, base_file)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.ExtractionItem{}},
      {422, %inda_hr.Model.ErrorModel{}},
      {415, %inda_hr.Model.ErrorModel{}},
      {500, %inda_hr.Model.ErrorModel{}},
      {503, %inda_hr.Model.ErrorModel{}},
      {400, %inda_hr.Model.ErrorModel{}}
    ])
  end

  @doc """
  Text Extraction
   This method extracts the text from a resume by performing the first steps of [Parse Resume](https://api.inda.ai/hr/docs/v2/#operation/parse_resume__POST). In particular, the method requires in input the *binary* and the *extension* of the file and automatically performs (*i*) Document Layout Analysis, (*ii*) Optical Character Recognition (if the input document is an image), and (*iii*) Text Extraction.  The allowed file extensions are  <code style='color: #333333; opacity: 0.9'>pdf</code>, <code style='color: #333333; opacity: 0.9'>doc</code>, <code style='color: #333333; opacity: 0.9'>docx</code>, <code style='color: #333333; opacity: 0.9'>odt</code>, <code style='color: #333333; opacity: 0.9'>txt</code>, <code style='color: #333333; opacity: 0.9'>html</code>, <code style='color: #333333; opacity: 0.9'>pptx</code>, <code style='color: #333333; opacity: 0.9'>rtf</code>, <code style='color: #333333; opacity: 0.9'>jpg</code>, <code style='color: #333333; opacity: 0.9'>jpeg</code>, <code style='color: #333333; opacity: 0.9'>png</code>, <code style='color: #333333; opacity: 0.9'>tif</code>, <code style='color: #333333; opacity: 0.9'>tiff</code> .  

  ### Parameters

  - `connection` (inda_hr.Connection): Connection to server
  - `base_file` (BaseFile): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, inda_hr.Model.TextResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec text_extraction_post(Tesla.Env.client, inda_hr.Model.BaseFile.t, keyword()) :: {:ok, inda_hr.Model.ErrorModel.t} | {:ok, inda_hr.Model.TextResponse.t} | {:error, Tesla.Env.t}
  def text_extraction_post(connection, base_file, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/hr/v2/parse/resume/text/")
      |> add_param(:body, :body, base_file)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %inda_hr.Model.TextResponse{}},
      {422, %inda_hr.Model.ErrorModel{}},
      {415, %inda_hr.Model.ErrorModel{}}
    ])
  end
end
