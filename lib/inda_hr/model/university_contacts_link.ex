# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.UniversityContactsLink do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"URL",
    :"Label",
    :"Type"
  ]

  @type t :: %__MODULE__{
    :"URL" => inda_hr.Model.JobadLinkUrl.t,
    :"Label" => inda_hr.Model.JobadLinkLinkLabel.t | nil,
    :"Type" => inda_hr.Model.BasePhoneNumbersValueModelStrictStr.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.UniversityContactsLink do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"URL", :struct, inda_hr.Model.JobadLinkUrl, options)
    |> deserialize(:"Label", :struct, inda_hr.Model.JobadLinkLinkLabel, options)
    |> deserialize(:"Type", :struct, inda_hr.Model.BasePhoneNumbersValueModelStrictStr, options)
  end
end

