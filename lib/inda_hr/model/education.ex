# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.Education do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Title",
    :"EducationLevelCode",
    :"Fields"
  ]

  @type t :: %__MODULE__{
    :"Title" => inda_hr.Model.EducationTitle.t,
    :"EducationLevelCode" => inda_hr.Model.JobadEducationEducationLevelCode.t | nil,
    :"Fields" => [inda_hr.Model.BaseEmploymentsValueModelStrictStr.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Education do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Title", :struct, inda_hr.Model.EducationTitle, options)
    |> deserialize(:"EducationLevelCode", :struct, inda_hr.Model.JobadEducationEducationLevelCode, options)
    |> deserialize(:"Fields", :list, inda_hr.Model.BaseEmploymentsValueModelStrictStr, options)
  end
end
