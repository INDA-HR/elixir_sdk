# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.RequiredEducation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Title",
    :"EducationLevelCode",
    :"Fields"
  ]

  @type t :: %__MODULE__{
    :"Title" => inda_hr.Model.RequiredEducationTitle.t | nil,
    :"EducationLevelCode" => inda_hr.Model.JobadEducationEducationLevelCode.t | nil,
    :"Fields" => [inda_hr.Model.JobadSectionsValueModelStrictStr.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.RequiredEducation do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Title", :struct, inda_hr.Model.RequiredEducationTitle, options)
    |> deserialize(:"EducationLevelCode", :struct, inda_hr.Model.JobadEducationEducationLevelCode, options)
    |> deserialize(:"Fields", :list, inda_hr.Model.JobadSectionsValueModelStrictStr, options)
  end
end

