using System.Text.Json.Serialization;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;

namespace pet_hotel.Models
{
    public enum PetBreedType {}
    public enum PetColorType {}
    public class Pet 
    {
        public int id { get; set; }

        public string name { get; set; }

        public string color { get; set; }

        public string checkedIn { get; set; }

        [ForeignKey("PetOwners")]
        public int petByOwnerId { get; set; }
    }
}
