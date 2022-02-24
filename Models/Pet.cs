using System.Text.Json.Serialization;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;

namespace pet_hotel.Models
{
    public enum PetBreedType {Shepherd, Poodle, Beagle, Bulldog, Terrier, Boxer, Labrador, Retriever}
    public enum PetColorType {White, Black, Golden, Tricolor, Spotted}
   
    public class Pet 
    {
        public int id { get; set; }

        public string name { get; set; }

        [JsonConverter(typeof(JsonStringEnumConverter))]

        public string breed { get; set; }

        [JsonConverter(typeof(JsonStringEnumConverter))]

        public PetColorType color { get; set; }

        public string checkedInAt { get; set; }

        [ForeignKey("id")]

        public int petOwnerId {get; set;}

        public PetOwner petOwner {get; set;}
       
    }
}
