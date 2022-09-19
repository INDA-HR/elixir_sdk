# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ResumeContactInfoContactInfo do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"PhoneNumbers",
    :"EmailAddresses",
    :"Links"
  ]

  @type t :: %__MODULE__{
    :"PhoneNumbers" => [inda_hr.Model.ResumePhoneNumbersPhoneNumber.t] | nil,
    :"EmailAddresses" => [inda_hr.Model.ResumeEmailAddressEmailAddress.t] | nil,
    :"Links" => [inda_hr.Model.ResumeLinkLink.t] | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ResumeContactInfoContactInfo do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"PhoneNumbers", :list, inda_hr.Model.ResumePhoneNumbersPhoneNumber, options)
    |> deserialize(:"EmailAddresses", :list, inda_hr.Model.ResumeEmailAddressEmailAddress, options)
    |> deserialize(:"Links", :list, inda_hr.Model.ResumeLinkLink, options)
  end
end

