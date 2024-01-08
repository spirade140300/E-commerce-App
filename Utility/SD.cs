using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EcommerceApp.Utility
{
    public static class SD
    {
        public const string Role_Customer = "Customer";
        public const string Role_Company = "Company";
        public const string Role_Admin = "Admin";
        public const string Role_Employee = "Employee";

        public const string StatusPending = "StatusPending";
        public const string StatusApproved = "StatusApproved";
        public const string StatusProcessing = "StatusProcessing";
        public const string StatusShipped = "StatusShipped";

        public const string StatusPaymentPending = "StatusPaymentPending";
        public const string StatusPaymentApproved = "StatusPaymentApproved";
        public const string StatusPaymentApprovedForDelayedPayment = "StatusPaymentApprovedForDelayedPayment";
    }
}
