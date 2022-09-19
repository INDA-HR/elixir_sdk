# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.FeedbackOrganization do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"OrganizationName",
    :"Department",
    :"Location",
    :"Link",
    :"ID"
  ]

  @type t :: %__MODULE__{
    :"OrganizationName" => inda_hr.Model.FeedbackOrganizationName.t | nil,
    :"Department" => inda_hr.Model.Text.t | nil,
    :"Location" => inda_hr.Model.ResumeLocationsLocation.t | nil,
    :"Link" => inda_hr.Model.ResumeLinkLink.t | nil,
    :"ID" => inda_hr.Model.Id.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.FeedbackOrganization do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"OrganizationName", :struct, inda_hr.Model.FeedbackOrganizationName, options)
    |> deserialize(:"Department", :struct, inda_hr.Model.Text, options)
    |> deserialize(:"Location", :struct, inda_hr.Model.ResumeLocationsLocation, options)
    |> deserialize(:"Link", :struct, inda_hr.Model.ResumeLinkLink, options)
    |> deserialize(:"ID", :struct, inda_hr.Model.Id, options)
  end
end
