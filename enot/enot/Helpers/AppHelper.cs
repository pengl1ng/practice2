﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace enot.Helpers
{
    public static class AppHelper
    {
        public static Frame MainFrame = new Frame();
        public static DbEntities DbConnect = new DbEntities();
        public static Frame UserFrame = new Frame();
    }
}
