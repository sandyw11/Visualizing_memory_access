import java.text.DecimalFormat;
import java.util.*;

PGraphics[] pg;

boolean showmenu = true;
boolean showaccess = true;
boolean showread = false;
boolean showwrite = false;
boolean showexec = false;
boolean showstatistic = false;
boolean showastar = false;
boolean showbzip = false;
boolean showgcc = false;
boolean showh264 = false;
boolean showhmmer = false;
boolean showlibquantum = false;
boolean showmcf = false;
boolean showsjeng = false;
boolean showxalancbmk = false;
boolean showdetailastar = false;
boolean showdetailbzip = false;
boolean showdetailgcc = false;
boolean showdetailh264 = false;
boolean showdetailhmmer = false;
boolean showdetaillibquantum = false;
boolean showdetailmcf = false;
boolean showdetailsjeng = false;
boolean showdetailxalancbmk = false;

boolean figureover = false;

Table astar;
int countastar;
ArrayList<String> vtladdrastar = new ArrayList<String>(); 
ArrayList<Float> floatvtladdrastar = new ArrayList<Float>();  
ArrayList<String> phyaddrastar = new ArrayList<String>();
ArrayList<Float> floatphyaddrastar = new ArrayList<Float>();
ArrayList<Float> accessastar = new ArrayList<Float>();
ArrayList<Float> readastar = new ArrayList<Float>();
ArrayList<Float> writeastar = new ArrayList<Float>();
ArrayList<Float> execastar = new ArrayList<Float>();
String maxvtladdrastar = "bffee000";
float maxfloatvtladdrastar = 0.0;
String maxphyaddrastar = "1670000";
float maxfloatphyaddrastar = 0.0;
float maxaccessastar = 0.0;
float maxreadastar = 0.0;
float maxwriteastar = 0.0;
float maxexecastar = 0.0;
float[] sortvtladdrastar;
float[] sortphyaddrastar;
float sumaccessastar = 0.0;
float sumreadastar = 0.0;
float sumwriteastar = 0.0;
float sumexecastar = 0.0;
int countaccessastar = 0;
int countreadastar = 0;
int countwriteastar = 0;
int countexecastar = 0;

Table bzip;
int countbzip = 0;
ArrayList<String> vtladdrbzip = new ArrayList<String>();  
ArrayList<Float> floatvtladdrbzip = new ArrayList<Float>();
ArrayList<String> phyaddrbzip = new ArrayList<String>();
ArrayList<Float> floatphyaddrbzip = new ArrayList<Float>();
ArrayList<Float> accessbzip = new ArrayList<Float>();
ArrayList<Float> readbzip = new ArrayList<Float>();
ArrayList<Float> writebzip = new ArrayList<Float>();
ArrayList<Float> execbzip = new ArrayList<Float>();
String maxvtladdrbzip = "c402d000";
float maxfloatvtladdrbzip = 0.0;
String maxphyaddrbzip = "3f62000";
float maxfloatphyaddrbzip = 0.0;
float maxaccessbzip = 0.0;
float maxreadbzip = 0.0;
float maxwritebzip = 0.0;
float maxexecbzip = 0.0;
float[] sortvtladdrbzip;
float[] sortphyaddrbzip;
float sumaccessbzip = 0.0;
float sumreadbzip = 0.0;
float sumwritebzip = 0.0;
float sumexecbzip = 0.0;
int countaccessbzip = 0;
int countreadbzip = 0;
int countwritebzip = 0;
int countexecbzip = 0;

Table gcc;
int countgcc = 0;
ArrayList<String> vtladdrgcc = new ArrayList<String>();  
ArrayList<Float> floatvtladdrgcc = new ArrayList<Float>();
ArrayList<String> phyaddrgcc = new ArrayList<String>();
ArrayList<Float> floatphyaddrgcc = new ArrayList<Float>();
ArrayList<Float> accessgcc = new ArrayList<Float>();
ArrayList<Float> readgcc = new ArrayList<Float>();
ArrayList<Float> writegcc = new ArrayList<Float>();
ArrayList<Float> execgcc = new ArrayList<Float>();
String maxvtladdrgcc = "bffef000";
float maxfloatvtladdrgcc = 0.0;
String maxphyaddrgcc = "410e6000";
float maxfloatphyaddrgcc = 0.0;
float maxaccessgcc = 0.0;
float maxreadgcc = 0.0;
float maxwritegcc = 0.0;
float maxexecgcc = 0.0;
float[] sortvtladdrgcc;
float[] sortphyaddrgcc;
float sumaccessgcc = 0.0;
float sumreadgcc = 0.0;
float sumwritegcc = 0.0;
float sumexecgcc = 0.0;
int countaccessgcc = 0;
int countreadgcc = 0;
int countwritegcc = 0;
int countexecgcc = 0;

Table h264;
int counth264;
ArrayList<String> vtladdrh264 = new ArrayList<String>(); 
ArrayList<Float> floatvtladdrh264 = new ArrayList<Float>();  
ArrayList<String> phyaddrh264 = new ArrayList<String>();
ArrayList<Float> floatphyaddrh264 = new ArrayList<Float>();
ArrayList<Float> accessh264 = new ArrayList<Float>();
ArrayList<Float> readh264 = new ArrayList<Float>();
ArrayList<Float> writeh264 = new ArrayList<Float>();
ArrayList<Float> exech264 = new ArrayList<Float>();
String maxvtladdrh264 = "bffef000";
float maxfloatvtladdrh264 = 0.0;
String maxphyaddrh264 = "2bf8000";
float maxfloatphyaddrh264 = 0.0;
float maxaccessh264 = 0.0;
float maxreadh264 = 0.0;
float maxwriteh264 = 0.0;
float maxexech264 = 0.0;
float[] sortvtladdrh264;
float[] sortphyaddrh264;
float sumaccessh264 = 0.0;
float sumreadh264 = 0.0;
float sumwriteh264 = 0.0;
float sumexech264 = 0.0;
int countaccessh264 = 0;
int countreadh264 = 0;
int countwriteh264 = 0;
int countexech264 = 0;

Table hmmer;
int counthmmer;
ArrayList<String> vtladdrhmmer = new ArrayList<String>(); 
ArrayList<Float> floatvtladdrhmmer = new ArrayList<Float>();  
ArrayList<String> phyaddrhmmer = new ArrayList<String>();
ArrayList<Float> floatphyaddrhmmer = new ArrayList<Float>();
ArrayList<Float> accesshmmer = new ArrayList<Float>();
ArrayList<Float> readhmmer = new ArrayList<Float>();
ArrayList<Float> writehmmer = new ArrayList<Float>();
ArrayList<Float> exechmmer = new ArrayList<Float>();
String maxvtladdrhmmer = "fffff000";
float maxfloatvtladdrhmmer = 0.0;
String maxphyaddrhmmer = "3b4000";
float maxfloatphyaddrhmmer= 0.0;
float maxaccesshmmer = 0.0;
float maxreadhmmer = 0.0;
float maxwritehmmer = 0.0;
float maxexechmmer = 0.0;
float[] sortvtladdrhmmer;
float[] sortphyaddrhmmer;
float sumaccesshmmer = 0.0;
float sumreadhmmer = 0.0;
float sumwritehmmer = 0.0;
float sumexechmmer = 0.0;
int countaccesshmmer = 0;
int countreadhmmer = 0;
int countwritehmmer = 0;
int countexechmmer = 0;
  
Table libquantum;
int countlibquantum = 0;
ArrayList<String> vtladdrlibquantum = new ArrayList<String>();  
ArrayList<Float> floatvtladdrlibquantum = new ArrayList<Float>();
ArrayList<String> phyaddrlibquantum = new ArrayList<String>();
ArrayList<Float> floatphyaddrlibquantum = new ArrayList<Float>();
ArrayList<Float> accesslibquantum = new ArrayList<Float>();
ArrayList<Float> readlibquantum = new ArrayList<Float>();
ArrayList<Float> writelibquantum = new ArrayList<Float>();
ArrayList<Float> execlibquantum = new ArrayList<Float>();
String maxvtladdrlibquantum = "bffef000";
float maxfloatvtladdrlibquantum = 0.0;
String maxphyaddrlibquantum = "2010000";
float maxfloatphyaddrlibquantum = 0.0;
float maxaccesslibquantum = 0.0;
float maxreadlibquantum = 0.0;
float maxwritelibquantum = 0.0;
float maxexeclibquantum = 0.0;
float[] sortvtladdrlibquantum;
float[] sortphyaddrlibquantum;
float sumaccesslibquantum = 0.0;
float sumreadlibquantum = 0.0;
float sumwritelibquantum = 0.0;
float sumexeclibquantum = 0.0;
int countaccesslibquantum = 0;
int countreadlibquantum = 0;
int countwritelibquantum = 0;
int countexeclibquantum = 0;

Table mcf;
int countmcf = 0;
ArrayList<String> vtladdrmcf = new ArrayList<String>();  
ArrayList<Float> floatvtladdrmcf = new ArrayList<Float>();
ArrayList<String> phyaddrmcf = new ArrayList<String>();
ArrayList<Float> floatphyaddrmcf = new ArrayList<Float>();
ArrayList<Float> accessmcf = new ArrayList<Float>();
ArrayList<Float> readmcf = new ArrayList<Float>();
ArrayList<Float> writemcf = new ArrayList<Float>();
ArrayList<Float> execmcf = new ArrayList<Float>();
String maxvtladdrmcf = "bffef000";
float maxfloatvtladdrmcf = 0.0;
String maxphyaddrmcf = "6fd00000";
float maxfloatphyaddrmcf = 0.0;
float maxaccessmcf = 0.0;
float maxreadmcf = 0.0;
float maxwritemcf = 0.0;
float maxexecmcf = 0.0;
float[] sortvtladdrmcf;
float[] sortphyaddrmcf;
float sumaccessmcf = 0.0;
float sumreadmcf = 0.0;
float sumwritemcf = 0.0;
float sumexecmcf = 0.0;
int countaccessmcf = 0;
int countreadmcf = 0;
int countwritemcf = 0;
int countexecmcf = 0;

Table sjeng;
int countsjeng = 0;
ArrayList<String> vtladdrsjeng = new ArrayList<String>();  
ArrayList<Float> floatvtladdrsjeng = new ArrayList<Float>();
ArrayList<String> phyaddrsjeng = new ArrayList<String>();
ArrayList<Float> floatphyaddrsjeng = new ArrayList<Float>();
ArrayList<Float> accesssjeng = new ArrayList<Float>();
ArrayList<Float> readsjeng = new ArrayList<Float>();
ArrayList<Float> writesjeng = new ArrayList<Float>();
ArrayList<Float> execsjeng = new ArrayList<Float>();
String maxvtladdrsjeng = "fffff000";
float maxfloatvtladdrsjeng = 0.0;
String maxphyaddrsjeng = "151b7000";
float maxfloatphyaddrsjeng = 0.0;
float maxaccesssjeng = 0.0;
float maxreadsjeng = 0.0;
float maxwritesjeng = 0.0;
float maxexecsjeng = 0.0;
float[] sortvtladdrsjeng;
float[] sortphyaddrsjeng;
float sumaccesssjeng = 0.0;
float sumreadsjeng = 0.0;
float sumwritesjeng = 0.0;
float sumexecsjeng = 0.0;
int countaccesssjeng = 0;
int countreadsjeng = 0;
int countwritesjeng = 0;
int countexecsjeng = 0;

Table xalancbmk;
int countxalancbmk = 0;
ArrayList<String> vtladdrxalancbmk = new ArrayList<String>();  
ArrayList<Float> floatvtladdrxalancbmk = new ArrayList<Float>();
ArrayList<String> phyaddrxalancbmk = new ArrayList<String>();
ArrayList<Float> floatphyaddrxalancbmk = new ArrayList<Float>();
ArrayList<Float> accessxalancbmk = new ArrayList<Float>();
ArrayList<Float> readxalancbmk = new ArrayList<Float>();
ArrayList<Float> writexalancbmk = new ArrayList<Float>();
ArrayList<Float> execxalancbmk = new ArrayList<Float>();
String maxvtladdrxalancbmk = "bffef000";
float maxfloatvtladdrxalancbmk = 0.0;
String maxphyaddrxalancbmk = "2410c000";
float maxfloatphyaddrxalancbmk = 0.0;
float maxaccessxalancbmk = 0.0;
float maxreadxalancbmk = 0.0;
float maxwritexalancbmk = 0.0;
float maxexecxalancbmk = 0.0;
float[] sortvtladdrxalancbmk;
float[] sortphyaddrxalancbmk;
float sumaccessxalancbmk = 0.0;
float sumreadxalancbmk = 0.0;
float sumwritexalancbmk = 0.0;
float sumexecxalancbmk = 0.0;
int countaccessxalancbmk = 0;
int countreadxalancbmk = 0;
int countwritexalancbmk = 0;
int countexecxalancbmk = 0;

void setup() 
{  
  size(1100, 500);
  //frameRate(60);
  
  pg = new PGraphics[9];
  for(int i=0; i<pg.length; i++)
  {
    pg[i] = createGraphics(width / 3 - width / 10, height / 3);
  }
  
  astar = loadTable("../data/astar.csv", "header");
  countastar = astar.getRowCount();
  sortvtladdrastar = new float[countastar];
  sortphyaddrastar = new float[countastar];
  bzip = loadTable("../data/bzip.csv", "header");
  countbzip = bzip.getRowCount();
  sortvtladdrbzip = new float[countbzip];
  sortphyaddrbzip = new float[countbzip];
  gcc = loadTable("../data/gcc.csv", "header");
  countgcc = gcc.getRowCount();
  sortvtladdrgcc = new float[countgcc];
  sortphyaddrgcc = new float[countgcc];
  h264 = loadTable("../data/h264.csv", "header");
  counth264 = h264.getRowCount();
  sortvtladdrh264 = new float[counth264];
  sortphyaddrh264 = new float[counth264];
  hmmer = loadTable("../data/hmmer.csv", "header");
  counthmmer = hmmer.getRowCount();
  sortvtladdrhmmer = new float[counthmmer];
  sortphyaddrhmmer = new float[counthmmer];
  libquantum = loadTable("../data/libquantum.csv", "header");
  countlibquantum = libquantum.getRowCount();
  sortvtladdrlibquantum = new float[countlibquantum];
  sortphyaddrlibquantum = new float[countlibquantum];
  mcf = loadTable("../data/mcf.csv", "header");
  countmcf = mcf.getRowCount();
  sortvtladdrmcf = new float[countmcf];
  sortphyaddrmcf = new float[countmcf];
  sjeng = loadTable("../data/sjeng.csv", "header");
  countsjeng = sjeng.getRowCount();
  sortvtladdrsjeng = new float[countsjeng];
  sortphyaddrsjeng = new float[countsjeng];
  xalancbmk = loadTable("../data/xalancbmk.csv", "header");
  countxalancbmk = xalancbmk.getRowCount();
  sortvtladdrxalancbmk = new float[countxalancbmk];
  sortphyaddrxalancbmk = new float[countxalancbmk];
  
  
  for (int i = 0; i < countastar; i++) 
  {
    vtladdrastar.add(astar.getRow(i).getString("VtlAddr"));
    floatvtladdrastar.add(astar.getRow(i).getFloat("IntVtlAddr"));
    phyaddrastar.add(astar.getRow(i).getString("PhyAddr"));
    floatphyaddrastar.add(astar.getRow(i).getFloat("IntPhyAddr"));
    accessastar.add(astar.getRow(i).getFloat("Access"));
    readastar.add(astar.getRow(i).getFloat("Read"));
    writeastar.add(astar.getRow(i).getFloat("Write"));
    execastar.add(astar.getRow(i).getFloat("Exec"));
    sortvtladdrastar[i] = astar.getRow(i).getFloat("IntVtlAddr");
    sortphyaddrastar[i] = astar.getRow(i).getFloat("IntPhyAddr");
  }
  //println("astar:" +vtladdrastar.get(0));
  //println(floatvtladdrastar.get(0));
  
  for (int i = 0; i < countbzip; i++) 
  {
    vtladdrbzip.add(bzip.getRow(i).getString("VtlAddr"));
    floatvtladdrbzip.add(bzip.getRow(i).getFloat("IntVtlAddr"));
    phyaddrbzip.add(bzip.getRow(i).getString("PhyAddr"));
    floatphyaddrbzip.add(bzip.getRow(i).getFloat("IntPhyAddr"));
    accessbzip.add(bzip.getRow(i).getFloat("Access"));  
    readbzip.add(bzip.getRow(i).getFloat("Read")); 
    writebzip.add(bzip.getRow(i).getFloat("Write")); 
    execbzip.add(bzip.getRow(i).getFloat("Exec"));
    sortvtladdrbzip[i] = bzip.getRow(i).getFloat("IntVtlAddr");
    sortphyaddrbzip[i] = bzip.getRow(i).getFloat("IntPhyAddr");
  }  
  //println("bzip:" +vtladdrbzip.get(0));
  //println(floatvtladdrbzip.get(0));
  
  for (int i = 0; i < countgcc; i++) 
  {
    vtladdrgcc.add(gcc.getRow(i).getString("VtlAddr"));
    floatvtladdrgcc.add(gcc.getRow(i).getFloat("IntVtlAddr"));
    phyaddrgcc.add(gcc.getRow(i).getString("PhyAddr"));
    floatphyaddrgcc.add(gcc.getRow(i).getFloat("IntPhyAddr"));
    accessgcc.add(gcc.getRow(i).getFloat("Access"));  
    readgcc.add(gcc.getRow(i).getFloat("Read")); 
    writegcc.add(gcc.getRow(i).getFloat("Write")); 
    execgcc.add(gcc.getRow(i).getFloat("Exec"));
    sortvtladdrgcc[i] = gcc.getRow(i).getFloat("IntVtlAddr");
    sortphyaddrgcc[i] = gcc.getRow(i).getFloat("IntPhyAddr");
  }
  //println("gcc:" +vtladdrgcc.get(0));
  //println(floatvtladdrgcc.get(0));
  
  for (int i = 0; i < counth264; i++) 
  {
    vtladdrh264.add(h264.getRow(i).getString("VtlAddr"));
    floatvtladdrh264.add(h264.getRow(i).getFloat("IntVtlAddr"));
    phyaddrh264.add(h264.getRow(i).getString("PhyAddr"));
    floatphyaddrh264.add(h264.getRow(i).getFloat("IntPhyAddr"));
    accessh264.add(h264.getRow(i).getFloat("Access")); 
    readh264.add(h264.getRow(i).getFloat("Read")); 
    writeh264.add(h264.getRow(i).getFloat("Write")); 
    exech264.add(h264.getRow(i).getFloat("Exec")); 
    sortvtladdrh264[i] = h264.getRow(i).getFloat("IntVtlAddr");
    sortphyaddrh264[i] = h264.getRow(i).getFloat("IntPhyAddr");
  }
  //println("h264:" +vtladdrh264.get(0));
  //println(floatvtladdrh264.get(0));
  
  for (int i = 0; i < counthmmer; i++) 
  {
    vtladdrhmmer.add(hmmer.getRow(i).getString("VtlAddr"));
    floatvtladdrhmmer.add(hmmer.getRow(i).getFloat("IntVtlAddr"));
    phyaddrhmmer.add(hmmer.getRow(i).getString("PhyAddr"));
    floatphyaddrhmmer.add(hmmer.getRow(i).getFloat("IntPhyAddr"));
    accesshmmer.add(hmmer.getRow(i).getFloat("Access"));
    readhmmer.add(hmmer.getRow(i).getFloat("Read"));
    writehmmer.add(hmmer.getRow(i).getFloat("Write"));
    exechmmer.add(hmmer.getRow(i).getFloat("Exec"));
    sortvtladdrhmmer[i] = hmmer.getRow(i).getFloat("IntVtlAddr");
    sortphyaddrhmmer[i] = hmmer.getRow(i).getFloat("IntPhyAddr");
  }
  //println("hmmer:" +vtladdrhmmer.get(0));
  //println(floatvtladdrhmmer.get(0));
  
  for (int i = 0; i < countlibquantum; i++) 
  {
    vtladdrlibquantum.add(libquantum.getRow(i).getString("VtlAddr"));
    floatvtladdrlibquantum.add(libquantum.getRow(i).getFloat("IntVtlAddr"));
    phyaddrlibquantum.add(libquantum.getRow(i).getString("PhyAddr"));
    floatphyaddrlibquantum.add(libquantum.getRow(i).getFloat("IntPhyAddr"));
    accesslibquantum.add(libquantum.getRow(i).getFloat("Access"));  
    readlibquantum.add(libquantum.getRow(i).getFloat("Read")); 
    writelibquantum.add(libquantum.getRow(i).getFloat("Write")); 
    execlibquantum.add(libquantum.getRow(i).getFloat("Exec"));
    sortvtladdrlibquantum[i] = libquantum.getRow(i).getFloat("IntVtlAddr");
    sortphyaddrlibquantum[i] = libquantum.getRow(i).getFloat("IntPhyAddr");
  }
  //println("libquantum:" +vtladdrlibquantum.get(0));
  //println(floatvtladdrlibquantum.get(0));
  
  for (int i = 0; i < countmcf; i++) 
  {
    vtladdrmcf.add(mcf.getRow(i).getString("VtlAddr"));
    floatvtladdrmcf.add(mcf.getRow(i).getFloat("IntVtlAddr"));
    phyaddrmcf.add(mcf.getRow(i).getString("PhyAddr"));
    floatphyaddrmcf.add(mcf.getRow(i).getFloat("IntPhyAddr"));
    accessmcf.add(mcf.getRow(i).getFloat("Access"));  
    readmcf.add(mcf.getRow(i).getFloat("Read")); 
    writemcf.add(mcf.getRow(i).getFloat("Write")); 
    execmcf.add(mcf.getRow(i).getFloat("Exec"));
    sortvtladdrmcf[i] = mcf.getRow(i).getFloat("IntVtlAddr");
    sortphyaddrmcf[i] = mcf.getRow(i).getFloat("IntPhyAddr");
  }
  //println("mcf:" +vtladdrmcf.get(0));
  //println(floatvtladdrmcf.get(0));
  
  for (int i = 0; i < countsjeng; i++) 
  {
    vtladdrsjeng.add(sjeng.getRow(i).getString("VtlAddr"));
    floatvtladdrsjeng.add(sjeng.getRow(i).getFloat("IntVtlAddr"));
    phyaddrsjeng.add(sjeng.getRow(i).getString("PhyAddr"));
    floatphyaddrsjeng.add(sjeng.getRow(i).getFloat("IntPhyAddr"));
    accesssjeng.add(sjeng.getRow(i).getFloat("Access"));  
    readsjeng.add(sjeng.getRow(i).getFloat("Read")); 
    writesjeng.add(sjeng.getRow(i).getFloat("Write")); 
    execsjeng.add(sjeng.getRow(i).getFloat("Exec"));
    sortvtladdrsjeng[i] = sjeng.getRow(i).getFloat("IntVtlAddr");
    sortphyaddrsjeng[i] = sjeng.getRow(i).getFloat("IntPhyAddr");
  }
  //println("sjeng:" +vtladdrsjeng.get(0));
  //println(floatvtladdrsjeng.get(0));
  
  for (int i = 0; i < countxalancbmk; i++) 
  {
    vtladdrxalancbmk.add(xalancbmk.getRow(i).getString("VtlAddr"));
    floatvtladdrxalancbmk.add(xalancbmk.getRow(i).getFloat("IntVtlAddr"));
    phyaddrxalancbmk.add(xalancbmk.getRow(i).getString("PhyAddr"));
    floatphyaddrxalancbmk.add(xalancbmk.getRow(i).getFloat("IntPhyAddr"));
    accessxalancbmk.add(xalancbmk.getRow(i).getFloat("Access"));  
    readxalancbmk.add(xalancbmk.getRow(i).getFloat("Read")); 
    writexalancbmk.add(xalancbmk.getRow(i).getFloat("Write")); 
    execxalancbmk.add(xalancbmk.getRow(i).getFloat("Exec"));
    sortvtladdrxalancbmk[i] = xalancbmk.getRow(i).getFloat("IntVtlAddr");
    sortphyaddrxalancbmk[i] = xalancbmk.getRow(i).getFloat("IntPhyAddr");
  }
  //println("xalancbmk:" +vtladdrxalancbmk.get(0));
  //println(floatvtladdrxalancbmk.get(0));
  
  maxfloatvtladdrastar = Collections.max(floatvtladdrastar);
  maxfloatphyaddrastar = Collections.max(floatphyaddrastar);
  maxaccessastar = Collections.max(accessastar);
  maxreadastar = Collections.max(readastar);
  maxwriteastar = Collections.max(writeastar);
  maxexecastar = Collections.max(execastar);
  sortvtladdrastar = sort(sortvtladdrastar);
  sortphyaddrastar = sort(sortphyaddrastar);
  for(int i = 0; i < countastar; i++)
  {
    sumaccessastar += accessastar.get(i);
    sumreadastar += readastar.get(i);
    sumwriteastar += writeastar.get(i);
    sumexecastar += execastar.get(i);
    if(accessastar.get(i) > 1.0)
    {
      countaccessastar++;
    }
    if(readastar.get(i) > 1.0)
    {
      countreadastar++;
    }
    if(writeastar.get(i) > 1.0)
    {
      countwriteastar++;
    }
    if(execastar.get(i) > 1.0)
    {
      countexecastar++;
    }    
  }  
  println("astar max float vtl:" + maxfloatvtladdrastar);
  println("astar max float phy:" + maxfloatphyaddrastar);
  println("astar max access:" + maxaccessastar);
  println("astar max read:" + maxreadastar);
  println("astar max write:" + maxwriteastar);
  println("astar max exec:" + maxexecastar);
  /*for(int i = 0; i < countastar; i++)
  {
    println("astar vtl " + i + " :" + sortvtladdrastar[i]);
  }
  for(int i = 0; i < countastar; i++)
  {
    println("astar phy " + i + " :" + sortphyaddrastar[i]);
  }*/
  println("astar sum access:" + sumaccessastar);
  println("astar sum read:" + sumreadastar);
  println("astar sum write:" + sumwriteastar);
  println("astar sum exec:" + sumexecastar);
  println("astar count access:" + countaccessastar);
  println("astar count read:" + countreadastar);
  println("astar count write:" + countwriteastar);
  println("astar count exec:" + countexecastar);
  
  maxfloatvtladdrbzip = Collections.max(floatvtladdrbzip);
  maxfloatphyaddrbzip = Collections.max(floatphyaddrbzip);
  maxaccessbzip = Collections.max(accessbzip);
  maxreadbzip = Collections.max(readbzip);
  maxwritebzip = Collections.max(writebzip);
  maxexecbzip = Collections.max(execbzip);
  sortvtladdrbzip = sort(sortvtladdrbzip);
  sortphyaddrbzip = sort(sortphyaddrbzip);
  for(int i = 0; i < countbzip; i++)
  {
    sumaccessbzip += accessbzip.get(i);
    sumreadbzip += readbzip.get(i);
    sumwritebzip += writebzip.get(i);
    sumexecbzip += execbzip.get(i);
    if(accessbzip.get(i) > 1.0)
    {
      countaccessbzip++;
    }
    if(readbzip.get(i) > 1.0)
    {
      countreadbzip++;
    }
    if(writebzip.get(i) > 1.0)
    {
      countwritebzip++;
    }
    if(execbzip.get(i) > 1.0)
    {
      countexecbzip++;
    }    
  }  
  println("bzip max float vtl:" + maxfloatvtladdrbzip);
  println("bzip max float phy:" + maxfloatphyaddrbzip);
  println("bzip max access:" + maxaccessbzip);
  println("bzip max read:" + maxreadbzip);
  println("bzip max write:" + maxwritebzip);
  println("bzip max exec:" + maxexecbzip);
  /*for(int i = 0; i < countbzip; i++)
  {
    println("bzip vtl " + i + " :" + sortvtladdrbzip[i]);
  }
  for(int i = 0; i < countbzip; i++)
  {
    println("bzip phy " + i + " :" + sortphyaddrbzip[i]);
  }*/
  println("bzip sum access:" + sumaccessbzip);
  println("bzip sum read:" + sumreadbzip);
  println("bzip sum write:" + sumwritebzip);
  println("bzip sum exec:" + sumexecbzip);
  println("bzip count access:" + countaccessbzip);
  println("bzip count read:" + countreadbzip);
  println("bzip count write:" + countwritebzip);
  println("bzip count exec:" + countexecbzip);
  
  maxfloatvtladdrgcc = Collections.max(floatvtladdrgcc);
  maxfloatphyaddrgcc = Collections.max(floatphyaddrgcc);
  maxaccessgcc = Collections.max(accessgcc);
  maxreadgcc = Collections.max(readgcc);
  maxwritegcc = Collections.max(writegcc);
  maxexecgcc = Collections.max(execgcc);
  sortvtladdrgcc = sort(sortvtladdrgcc);
  sortphyaddrgcc = sort(sortphyaddrgcc);
  for(int i = 0; i < countgcc; i++)
  {
    sumaccessgcc += accessgcc.get(i);
    sumreadgcc += readgcc.get(i);
    sumwritegcc += writegcc.get(i);
    sumexecgcc += execgcc.get(i);
    if(accessgcc.get(i) > 1.0)
    {
      countaccessgcc++;
    }
    if(readgcc.get(i) > 1.0)
    {
      countreadgcc++;
    }
    if(writegcc.get(i) > 1.0)
    {
      countwritegcc++;
    }
    if(execgcc.get(i) > 1.0)
    {
      countexecgcc++;
    }    
  }  
  println("gcc max float vtl:" + maxfloatvtladdrgcc);
  println("gcc max float phy:" + maxfloatphyaddrgcc);
  println("gcc max access:" + maxaccessgcc);
  println("gcc max read:" + maxreadgcc);
  println("gcc max write:" + maxwritegcc);
  println("gcc max exec:" + maxexecgcc);
  /*for(int i = 0; i < countgcc; i++)
  {
    println("gcc vtl " + i + " :" + sortvtladdrgcc[i]);
  }
  for(int i = 0; i < countgcc; i++)
  {
    println("gcc phy " + i + " :" + sortphyaddrgcc[i]);
  }*/
  println("gcc sum access:" + sumaccessgcc);
  println("gcc sum read:" + sumreadgcc);
  println("gcc sum write:" + sumwritegcc);
  println("gcc sum exec:" + sumexecgcc);
  println("gcc count access:" + countaccessgcc);
  println("gcc count read:" + countreadgcc);
  println("gcc count write:" + countwritegcc);
  println("gcc count exec:" + countexecgcc);
  
  maxfloatvtladdrh264 = Collections.max(floatvtladdrh264);
  maxfloatphyaddrh264 = Collections.max(floatphyaddrh264);
  maxaccessh264 = Collections.max(accessh264);
  maxreadh264 = Collections.max(readh264);
  maxwriteh264 = Collections.max(writeh264);
  maxexech264 = Collections.max(exech264);
  sortvtladdrh264 = sort(sortvtladdrh264);
  sortphyaddrh264 = sort(sortphyaddrh264);
  for(int i = 0; i < counth264; i++)
  {
    sumaccessh264 += accessh264.get(i);
    sumreadh264 += readh264.get(i);
    sumwriteh264 += writeh264.get(i);
    sumexech264 += exech264.get(i);
    if(accessh264.get(i) > 1.0)
    {
      countaccessh264++;
    }
    if(readh264.get(i) > 1.0)
    {
      countreadh264++;
    }
    if(writeh264.get(i) > 1.0)
    {
      countwriteh264++;
    }
    if(exech264.get(i) > 1.0)
    {
      countexech264++;
    }    
  }  
  println("h264 max float vtl:" + maxfloatvtladdrh264);
  println("h264 max float phy:" + maxfloatphyaddrh264);
  println("h264 max access:" + maxaccessh264);
  println("h264 max read:" + maxreadh264);
  println("h264 max write:" + maxwriteh264);
  println("h264 max exec:" + maxexech264);
  /*for(int i = 0; i < counth264; i++)
  {
    println("h264 vtl " + i + " :" + sortvtladdrh264[i]);
  }
  for(int i = 0; i < counth264; i++)
  {
    println("h264 phy " + i + " :" + sortphyaddrh264[i]);
  }*/
  println("h264 sum access:" + sumaccessh264);
  println("h264 sum read:" + sumreadh264);
  println("h264 sum write:" + sumwriteh264);
  println("h264 sum exec:" + sumexech264);
  println("h264 count access:" + countaccessh264);
  println("h264 count read:" + countreadh264);
  println("h264 count write:" + countwriteh264);
  println("h264 count exec:" + countexech264);
  
  maxfloatvtladdrhmmer = Collections.max(floatvtladdrhmmer);
  maxfloatphyaddrhmmer = Collections.max(floatphyaddrhmmer);
  maxaccesshmmer = Collections.max(accesshmmer);
  maxreadhmmer = Collections.max(readhmmer);
  maxwritehmmer = Collections.max(writehmmer);
  maxexechmmer = Collections.max(exechmmer);
  sortvtladdrhmmer = sort(sortvtladdrhmmer);
  sortphyaddrhmmer = sort(sortphyaddrhmmer);
  for(int i = 0; i < counthmmer; i++)
  {
    sumaccesshmmer += accesshmmer.get(i);
    sumreadhmmer += readhmmer.get(i);
    sumwritehmmer += writehmmer.get(i);
    sumexechmmer += exechmmer.get(i);
    if(accesshmmer.get(i) > 1.0)
    {
      countaccesshmmer++;
    }
    if(readhmmer.get(i) > 1.0)
    {
      countreadhmmer++;
    }
    if(writehmmer.get(i) > 1.0)
    {
      countwritehmmer++;
    }
    if(exechmmer.get(i) > 1.0)
    {
      countexechmmer++;
    }    
  }  
  println("hmmer max float vtl:" + maxfloatvtladdrhmmer);
  println("hmmer max float phy:" + maxfloatphyaddrhmmer);
  println("hmmer max access:" + maxaccesshmmer);
  println("hmmer max read:" + maxreadhmmer);
  println("hmmer max write:" + maxwritehmmer);
  println("hmmer max exec:" + maxexechmmer);
  /*for(int i = 0; i < counthmmer; i++)
  {
    println("hmmer vtl " + i + " :" + sortvtladdrhmmer[i]);
  }
  for(int i = 0; i < counthmmer; i++)
  {
    println("hmmer phy " + i + " :" + sortphyaddrhmmer[i]);
  }*/
  println("hmmer sum access:" + sumaccesshmmer);
  println("hmmer sum read:" + sumreadhmmer);
  println("hmmer sum write:" + sumwritehmmer);
  println("hmmer sum exec:" + sumexechmmer);
  println("hmmer count access:" + countaccesshmmer);
  println("hmmer count read:" + countreadhmmer);
  println("hmmer count write:" + countwritehmmer);
  println("hmmer count exec:" + countexechmmer);
  
  maxfloatvtladdrlibquantum = Collections.max(floatvtladdrlibquantum);
  maxfloatphyaddrlibquantum = Collections.max(floatphyaddrlibquantum);
  maxaccesslibquantum = Collections.max(accesslibquantum);
  maxreadlibquantum = Collections.max(readlibquantum);
  maxwritelibquantum = Collections.max(writelibquantum);
  maxexeclibquantum = Collections.max(execlibquantum);
  sortvtladdrlibquantum = sort(sortvtladdrlibquantum);
  sortphyaddrlibquantum = sort(sortphyaddrlibquantum);
  for(int i = 0; i < countlibquantum; i++)
  {
    sumaccesslibquantum += accesslibquantum.get(i);
    sumreadlibquantum += readlibquantum.get(i);
    sumwritelibquantum += writelibquantum.get(i);
    sumexeclibquantum += execlibquantum.get(i);
    if(accesslibquantum.get(i) > 1.0)
    {
      countaccesslibquantum++;
    }
    if(readlibquantum.get(i) > 1.0)
    {
      countreadlibquantum++;
    }
    if(writelibquantum.get(i) > 1.0)
    {
      countwritelibquantum++;
    }
    if(execlibquantum.get(i) > 1.0)
    {
      countexeclibquantum++;
    }    
  }  
  println("libquantum max float vtl:" + maxfloatvtladdrlibquantum);
  println("libquantum max float phy:" + maxfloatphyaddrlibquantum);
  println("libquantum max access:" + maxaccesslibquantum);
  println("libquantum max read:" + maxreadlibquantum);
  println("libquantum max write:" + maxwritelibquantum);
  println("libquantum max exec:" + maxexeclibquantum);
  /*for(int i = 0; i < countlibquantum; i++)
  {
    println("libquantum vtl " + i + " :" + sortvtladdrlibquantum[i]);
  }
  for(int i = 0; i < countlibquantum; i++)
  {
    println("libquantum phy " + i + " :" + sortphyaddrlibquantum[i]);
  }*/
  println("libquantum sum access:" + sumaccesslibquantum);
  println("libquantum sum read:" + sumreadlibquantum);
  println("libquantum sum write:" + sumwritelibquantum);
  println("libquantum sum exec:" + sumexeclibquantum);
  println("libquantum count access:" + countaccesslibquantum);
  println("libquantum count read:" + countreadlibquantum);
  println("libquantum count write:" + countwritelibquantum);
  println("libquantum count exec:" + countexeclibquantum);
  
  maxfloatvtladdrmcf = Collections.max(floatvtladdrmcf);
  maxfloatphyaddrmcf = Collections.max(floatphyaddrmcf);
  maxaccessmcf = Collections.max(accessmcf);
  maxreadmcf = Collections.max(readmcf);
  maxwritemcf = Collections.max(writemcf);
  maxexecmcf = Collections.max(execmcf);
  sortvtladdrmcf = sort(sortvtladdrmcf);
  sortphyaddrmcf = sort(sortphyaddrmcf);
  for(int i = 0; i < countmcf; i++)
  {
    sumaccessmcf += accessmcf.get(i);
    sumreadmcf += readmcf.get(i);
    sumwritemcf += writemcf.get(i);
    sumexecmcf += execmcf.get(i);
    if(accessmcf.get(i) > 1.0)
    {
      countaccessmcf++;
    }
    if(readmcf.get(i) > 1.0)
    {
      countreadmcf++;
    }
    if(writemcf.get(i) > 1.0)
    {
      countwritemcf++;
    }
    if(execmcf.get(i) > 1.0)
    {
      countexecmcf++;
    }    
  }  
  println("mcf max float vtl:" + maxfloatvtladdrmcf);
  println("mcf max float phy:" + maxfloatphyaddrmcf);
  println("mcf max access:" + maxaccessmcf);
  println("mcf max read:" + maxreadmcf);
  println("mcf max write:" + maxwritemcf);
  println("mcf max exec:" + maxexecmcf);
  /*for(int i = 0; i < countmcf; i++)
  {
    println("mcf vtl " + i + " :" + sortvtladdrmcf[i]);
  }
  for(int i = 0; i < countmcf; i++)
  {
    println("mcf phy " + i + " :" + sortphyaddrmcf[i]);
  }*/
  println("mcf sum access:" + sumaccessmcf);
  println("mcf sum read:" + sumreadmcf);
  println("mcf sum write:" + sumwritemcf);
  println("mcf sum exec:" + sumexecmcf);
  println("mcf count access:" + countaccessmcf);
  println("mcf count read:" + countreadmcf);
  println("mcf count write:" + countwritemcf);
  println("mcf count exec:" + countexecmcf);
  
  maxfloatvtladdrsjeng = Collections.max(floatvtladdrsjeng);
  maxfloatphyaddrsjeng = Collections.max(floatphyaddrsjeng);
  maxaccesssjeng = Collections.max(accesssjeng);
  maxreadsjeng = Collections.max(readsjeng);
  maxwritesjeng = Collections.max(writesjeng);
  maxexecsjeng = Collections.max(execsjeng);
  sortvtladdrsjeng = sort(sortvtladdrsjeng);
  sortphyaddrsjeng = sort(sortphyaddrsjeng);
  for(int i = 0; i < countsjeng; i++)
  {
    sumaccesssjeng += accesssjeng.get(i);
    sumreadsjeng += readsjeng.get(i);
    sumwritesjeng += writesjeng.get(i);
    sumexecsjeng += execsjeng.get(i);
    if(accesssjeng.get(i) > 1.0)
    {
      countaccesssjeng++;
    }
    if(readsjeng.get(i) > 1.0)
    {
      countreadsjeng++;
    }
    if(writesjeng.get(i) > 1.0)
    {
      countwritesjeng++;
    }
    if(execsjeng.get(i) > 1.0)
    {
      countexecsjeng++;
    }    
  }  
  println("sjeng max float vtl:" + maxfloatvtladdrsjeng);
  println("sjeng max float phy:" + maxfloatphyaddrsjeng);
  println("sjeng max access:" + maxaccesssjeng);
  println("sjeng max read:" + maxreadsjeng);
  println("sjeng max write:" + maxwritesjeng);
  println("sjeng max exec:" + maxexecsjeng);
  /*for(int i = 0; i < countsjeng; i++)
  {
    println("sjeng vtl " + i + " :" + sortvtladdrsjeng[i]);
  }
  for(int i = 0; i < countsjeng; i++)
  {
    println("sjeng phy " + i + " :" + sortphyaddrsjeng[i]);
  }*/
  println("sjeng sum access:" + sumaccesssjeng);
  println("sjeng sum read:" + sumreadsjeng);
  println("sjeng sum write:" + sumwritesjeng);
  println("sjeng sum exec:" + sumexecsjeng);
  println("sjeng count access:" + countaccesssjeng);
  println("sjeng count read:" + countreadsjeng);
  println("sjeng count write:" + countwritesjeng);
  println("sjeng count exec:" + countexecsjeng);
  
  maxfloatvtladdrxalancbmk = Collections.max(floatvtladdrxalancbmk);
  maxfloatphyaddrxalancbmk = Collections.max(floatphyaddrxalancbmk);
  maxaccessxalancbmk = Collections.max(accessxalancbmk);
  maxreadxalancbmk = Collections.max(readxalancbmk);
  maxwritexalancbmk = Collections.max(writexalancbmk);
  maxexecxalancbmk = Collections.max(execxalancbmk);
  sortvtladdrxalancbmk = sort(sortvtladdrxalancbmk);
  sortphyaddrxalancbmk = sort(sortphyaddrxalancbmk);
  for(int i = 0; i < countxalancbmk; i++)
  {
    sumaccessxalancbmk += accessxalancbmk.get(i);
    sumreadxalancbmk += readxalancbmk.get(i);
    sumwritexalancbmk += writexalancbmk.get(i);
    sumexecxalancbmk += execxalancbmk.get(i);
    if(accessxalancbmk.get(i) > 1.0)
    {
      countaccessxalancbmk++;
    }
    if(readxalancbmk.get(i) > 1.0)
    {
      countreadxalancbmk++;
    }
    if(writexalancbmk.get(i) > 1.0)
    {
      countwritexalancbmk++;
    }
    if(execxalancbmk.get(i) > 1.0)
    {
      countexecxalancbmk++;
    }    
  }  
  println("xalancbmk max float vtl:" + maxfloatvtladdrxalancbmk);
  println("xalancbmk max float phy:" + maxfloatphyaddrxalancbmk);
  println("xalancbmk max access:" + maxaccessxalancbmk);
  println("xalancbmk max read:" + maxreadxalancbmk);
  println("xalancbmk max write:" + maxwritexalancbmk);
  println("xalancbmk max exec:" + maxexecxalancbmk);
  /*for(int i = 0; i < countxalancbmk; i++)
  {
    println("xalancbmk vtl " + i + " :" + sortvtladdrxalancbmk[i]);
  }
  for(int i = 0; i < countxalancbmk; i++)
  {
    println("xalancbmk phy " + i + " :" + sortphyaddrxalancbmk[i]);
  }*/
  println("xalancbmk sum access:" + sumaccessxalancbmk);
  println("xalancbmk sum read:" + sumreadxalancbmk);
  println("xalancbmk sum write:" + sumwritexalancbmk);
  println("xalancbmk sum exec:" + sumexecxalancbmk);
  println("xalancbmk count access:" + countaccessxalancbmk);
  println("xalancbmk count read:" + countreadxalancbmk);
  println("xalancbmk count write:" + countwritexalancbmk);
  println("xalancbmk count exec:" + countexecxalancbmk);
}

void draw() 
{
  background(255);

  update(mouseX, mouseY);

  if(showmenu == true)
  {
    stroke(0);
    line(width * 0.91, 0, width * 0.91, height);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.92, height * 0.2, width * 0.07, height * 0.03);
    rect(width * 0.92, height * 0.6, width * 0.07, height * 0.03);
    fill(30, 144, 255);
    rect(width * 0.92, height * 0.3, width * 0.07, height * 0.03);
    fill(50, 205, 50);
    rect(width * 0.92, height * 0.4, width * 0.07, height * 0.03);
    fill(255, 20, 147);
    rect(width * 0.92, height * 0.5, width * 0.07, height * 0.03);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.925, height * 0.225);
    text("Statistic", width * 0.94, height * 0.625);
    text("Read", width * 0.945, height * 0.325);
    text("Write", width * 0.945, height * 0.425);
    text("Exec", width * 0.945, height * 0.525);
    if(showaccess == true)
    {
      showAccess();
    }
    if(showread == true)
    {
      showRead();
    }
    if(showwrite == true)
    {
      showWrite();
    }
    if(showexec == true)
    {
      showExec();
    }
    if(showstatistic == true)
    {
      showStatistic();
    }
  }
  
  if(showastar == true)
  {
    fill(0);    
    textSize(width * 0.02);
    text("astar", width * 0.25, height * 0.06);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.4, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.41, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.5, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Different Type", width * 0.505, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.6, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Menu", width * 0.625, height * 0.05);

    stroke(0);
    fill(255, 0);
    rect(width * 0.3, height * 0.92, width * 0.35, height * 0.06);    
    strokeWeight(5);
    stroke(30, 144, 255);
    line(width * 0.31, height * 0.94, width * 0.34, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Read", width * 0.315, height * 0.97);
    stroke(50, 205, 50);
    line(width * 0.36, height * 0.94, width * 0.39, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Write", width * 0.365, height * 0.97);
    stroke(255, 20, 147);
    line(width * 0.41, height * 0.94, width * 0.44, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Exec", width * 0.415, height * 0.97);
    strokeWeight(1);
    stroke(0);
    line(width * 0.5, height * 0.95, width * 0.55, height * 0.95);
    line(width * 0.5, height * 0.95, width * 0.5, height * 0.94);
    line(width * 0.55, height * 0.95, width * 0.55, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Vtl", width * 0.52, height * 0.945);
    stroke(0);
    line(width * 0.57, height * 0.95, width * 0.62, height * 0.95);
    line(width * 0.57, height * 0.95, width * 0.57, height * 0.94);
    line(width * 0.62, height * 0.95, width * 0.62, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Phy", width * 0.59, height * 0.945);
    text(int(maxfloatvtladdrastar / maxfloatphyaddrastar), width * 0.52, height * 0.975);
    text(":", width * 0.56, height * 0.975);
    text(1, width * 0.595, height * 0.975);
    
    if(showdetailastar == false)
    {
      stroke(0);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.8, width * 0.9, height * 0.8);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.59);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.8, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.81);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.59);
      text(0, width * 0.08, height * 0.59);
      text(maxvtladdrastar, width * 0.92, height * 0.59);
      text("Phy", width * 0.05, height * 0.82);
      text(0, width * 0.08, height * 0.82);
      text(maxphyaddrastar, width * 0.92, height * 0.82);
      
      for(int i = 0; i < countastar; i++) 
      {    
        if(readastar.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadastar) * log(readastar.get(i))));
        } 
        else if(writeastar.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwriteastar) * log(writeastar.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecastar) * log(execastar.get(i))));
        }    
        line(width * 0.1 + width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(i), height * 0.6, width * 0.1 + width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(i), height * 0.8);
      }    
      
      if(figureover == true)
      {
        stroke(0);
        fill(255, 0);
        rect(width * 0.28, height * 0.15, width * 0.5, height * 0.3);
        stroke(0);
        line(width * 0.3, height * 0.2, width * 0.7, height * 0.2);
        line(width * 0.3, height * 0.4, width * 0.7, height * 0.4);
      
        if(mouseY < height * 0.7)
        {
          float selectvtladdr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatvtladdrastar;
          //println("select vtladdr:" + selectvtladdr);
          int selecti = -1;
          float diff = maxfloatvtladdrastar;
          for(int i = 0; i < countastar; i++)
          {
            if(abs(selectvtladdr - floatvtladdrastar.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectvtladdr - floatvtladdrastar.get(i));
            }
          }
          //println("select vtladdr diff:" + diff);
          //println("select vtladdr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatvtladdrastar;
          for(int i = 0; i < countastar; i++)
          {
            if(abs(floatvtladdrastar.get(selecti) - sortvtladdrastar[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatvtladdrastar.get(selecti) - sortvtladdrastar[i]);
            }
          }
          //println("select vtladdr sort diff:" + diff);
          //println("select vtladdr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countastar - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatvtladdrastar;
            for(int i = 0; i < countastar; i++)
            {
              if(abs(sortvtladdrastar[selectsorti - j / 2 + k] - floatvtladdrastar.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortvtladdrastar[selectsorti - j / 2 + k] - floatvtladdrastar.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw vtl diff:" + diff);
            //println("draw vtl i:" + selectdraw[k]);
          }

          for(int i = 0; i < j; i++)
          {
            if(readastar.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadastar) * log(readastar.get(selectdraw[i]))));
            } 
            else if(writeastar.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwriteastar) * log(writeastar.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecastar) * log(execastar.get(selectdraw[i]))));
            }    
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / 2.0, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrastar * floatphyaddrastar.get(selectdraw[i]), height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / 2.0, height * 0.2);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.19);
              text(phyaddrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrastar * floatphyaddrastar.get(selectdraw[i]), height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrastar * floatphyaddrastar.get(selectdraw[i]), height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
                text(phyaddrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrastar * floatphyaddrastar.get(selectdraw[i]), height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
              }
            }                        
          } 
        }
        else
        {
          float selectphyaddr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatphyaddrastar;
          //println("select phyaddr:" + selectphyaddr);
          int selecti = -1;
          float diff = maxfloatphyaddrastar;
          for(int i = 0; i < countastar; i++)
          {
            if(abs(selectphyaddr - floatphyaddrastar.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectphyaddr - floatphyaddrastar.get(i));
            }
          }
          //println("select phyaddr diff:" + diff);
          //println("select phyaddr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatphyaddrastar;
          for(int i = 0; i < countastar; i++)
          {
            if(abs(floatphyaddrastar.get(selecti) - sortphyaddrastar[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatphyaddrastar.get(selecti) - sortphyaddrastar[i]);
            }
          }
          //println("select phyaddr sort diff:" + diff);
          //println("select phyaddr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countastar - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatphyaddrastar;
            for(int i = 0; i < countastar; i++)
            {
              if(abs(sortphyaddrastar[selectsorti - j / 2 + k] - floatphyaddrastar.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortphyaddrastar[selectsorti - j / 2 + k] - floatphyaddrastar.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw phy diff:" + diff);
            //println("draw phy i:" + selectdraw[k]);
          }
          for(int i = 0; i < j; i++)
          {
            if(readastar.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadastar) * log(readastar.get(selectdraw[i]))));
            } 
            else if(writeastar.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwriteastar) * log(writeastar.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecastar) * log(execastar.get(selectdraw[i]))));
            }           
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrastar * floatvtladdrastar.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrastar * floatvtladdrastar.get(selectdraw[i]), height * 0.19);
              text(phyaddrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrastar * floatvtladdrastar.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrastar * floatvtladdrastar.get(selectdraw[i]), height * 0.19);
                text(phyaddrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(phyaddrastar.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43);
              }
            }                        
          } 
        }
      }  
    }
    else
    {
      stroke(0);
      line(width * 0.1, height * 0.1, width * 0.9, height * 0.1);
      line(width * 0.1, height * 0.3, width * 0.9, height * 0.3);
      line(width * 0.1, height * 0.4, width * 0.9, height * 0.4);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.7, width * 0.9, height * 0.7);
      line(width * 0.1, height * 0.9, width * 0.9, height * 0.9);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.1, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.09);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.3, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.31);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.4, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.39);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.61);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.7, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.69);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.9, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.91);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.09);
      text(0, width * 0.08, height * 0.09);
      text(maxvtladdrastar, width * 0.92, height * 0.09);
      text("Phy", width * 0.05, height * 0.32);
      text(0, width * 0.08, height * 0.32);
      text(maxphyaddrastar, width * 0.92, height * 0.32);
      text("Vtl", width * 0.05, height * 0.39);
      text(0, width * 0.08, height * 0.39);
      text(maxvtladdrastar, width * 0.92, height * 0.39);
      text("Phy", width * 0.05, height * 0.62);
      text(0, width * 0.08, height * 0.62);
      text(maxphyaddrastar, width * 0.92, height * 0.62);
      text("Vtl", width * 0.05, height * 0.69);
      text(0, width * 0.08, height * 0.69);
      text(maxvtladdrastar, width * 0.92, height * 0.69);
      text("Phy", width * 0.05, height * 0.92);
      text(0, width * 0.08, height * 0.92);
      text(maxphyaddrastar, width * 0.92, height * 0.92);
      for(int i = 0; i < countastar; i++) 
      {         
        if(readastar.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadastar) * log(readastar.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(i), height * 0.1, width * 0.1 + width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(i), height * 0.3);        
        } 
        if(writeastar.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwriteastar) * log(writeastar.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(i), height * 0.4, width * 0.1 + width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(i), height * 0.6);        
        } 
        if(execastar.get(i) > 0) 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecastar) * log(execastar.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(i), height * 0.7, width * 0.1 + width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(i), height * 0.9);        
        }    
      }          
    }
  }
  
  if(showbzip == true)
  {
    fill(0);    
    textSize(width * 0.02);
    text("bzip", width * 0.25, height * 0.06);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.4, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.41, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.5, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Different Type", width * 0.505, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.6, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Menu", width * 0.625, height * 0.05);

    stroke(0);
    fill(255, 0);
    rect(width * 0.3, height * 0.92, width * 0.35, height * 0.06);    
    strokeWeight(5);
    stroke(30, 144, 255);
    line(width * 0.31, height * 0.94, width * 0.34, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Read", width * 0.315, height * 0.97);
    stroke(50, 205, 50);
    line(width * 0.36, height * 0.94, width * 0.39, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Write", width * 0.365, height * 0.97);
    stroke(255, 20, 147);
    line(width * 0.41, height * 0.94, width * 0.44, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Exec", width * 0.415, height * 0.97);
    strokeWeight(1);
    stroke(0);
    line(width * 0.5, height * 0.95, width * 0.55, height * 0.95);
    line(width * 0.5, height * 0.95, width * 0.5, height * 0.94);
    line(width * 0.55, height * 0.95, width * 0.55, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Vtl", width * 0.52, height * 0.945);
    stroke(0);
    line(width * 0.57, height * 0.95, width * 0.62, height * 0.95);
    line(width * 0.57, height * 0.95, width * 0.57, height * 0.94);
    line(width * 0.62, height * 0.95, width * 0.62, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Phy", width * 0.59, height * 0.945);
    text(int(maxfloatvtladdrbzip / maxfloatphyaddrbzip), width * 0.52, height * 0.975);
    text(":", width * 0.56, height * 0.975);
    text(1, width * 0.595, height * 0.975);
    
    if(showdetailbzip == false)
    {
      stroke(0);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.8, width * 0.9, height * 0.8);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.59);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.8, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.81);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.59);
      text(0, width * 0.08, height * 0.59);
      text(maxvtladdrbzip, width * 0.92, height * 0.59);
      text("Phy", width * 0.05, height * 0.82);
      text(0, width * 0.08, height * 0.82);
      text(maxphyaddrbzip, width * 0.92, height * 0.82);
      
      for(int i = 0; i < countbzip; i++) 
      {    
        if(readbzip.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadbzip) * log(readbzip.get(i))));
        } 
        else if(writebzip.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritebzip) * log(writebzip.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecbzip) * log(execbzip.get(i))));
        }    
        line(width * 0.1 + width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(i), height * 0.6, width * 0.1 + width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(i), height * 0.8);
      }    
      
      /*stroke(0);
      line(51, 351, 950, 351);
      line(51, 450, 950, 450);
      for(int i = 0; i < countbzip; i++) 
      {    
        if(readbzip.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxaccessbzip) * log(accessbzip.get(i))));
        } 
        else if(writebzip.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxaccessbzip) * log(accessbzip.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxaccessbzip) * log(accessbzip.get(i))));
        }    
        line(51.0 + float(950 - 50) / maxfloatvtladdrbzip * floatvtladdrbzip.get(i), 351, 51.0 + float(950 - 50) / maxfloatphyaddrbzip * floatphyaddrbzip.get(i), 450);
      
        if(readbzip.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxaccessbzip) * log(accessbzip.get(i))));
        } 
        else if(writebzip.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxaccessbzip) * log(accessbzip.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxaccessbzip) * log(accessbzip.get(i))));
        }
        line(51 + float(950 - 50) / float(countbzip) * i, 351, 51 + float(950 - 50) / float(countbzip) * i, 450);
      }
      text("bzip", 20, 390);
      text(vtladdrbzip.get(0), 50, 340);
      text(vtladdrbzip.get(countbzip-1), 950, 340);
      text(phyaddrbzip.get(0), 50, 460);
      text(phyaddrbzip.get(countbzip-1), 950, 460);*/
      
      if(figureover == true)
      {
        stroke(0);
        fill(255, 0);
        rect(width * 0.28, height * 0.15, width * 0.5, height * 0.3);
        stroke(0);
        line(width * 0.3, height * 0.2, width * 0.7, height * 0.2);
        line(width * 0.3, height * 0.4, width * 0.7, height * 0.4);
      
        if(mouseY < height * 0.7)
        {
          float selectvtladdr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatvtladdrbzip;
          //println("select vtladdr:" + selectvtladdr);
          int selecti = -1;
          float diff = maxfloatvtladdrbzip;
          for(int i = 0; i < countbzip; i++)
          {
            if(abs(selectvtladdr - floatvtladdrbzip.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectvtladdr - floatvtladdrbzip.get(i));
            }
          }
          //println("select vtladdr diff:" + diff);
          //println("select vtladdr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatvtladdrbzip;
          for(int i = 0; i < countbzip; i++)
          {
            if(abs(floatvtladdrbzip.get(selecti) - sortvtladdrbzip[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatvtladdrbzip.get(selecti) - sortvtladdrbzip[i]);
            }
          }
          //println("select vtladdr sort diff:" + diff);
          //println("select vtladdr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countbzip - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatvtladdrbzip;
            for(int i = 0; i < countbzip; i++)
            {
              if(abs(sortvtladdrbzip[selectsorti - j / 2 + k] - floatvtladdrbzip.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortvtladdrbzip[selectsorti - j / 2 + k] - floatvtladdrbzip.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw vtl diff:" + diff);
            //println("draw vtl i:" + selectdraw[k]);
          }
          //float drawlength = abs(floatvtladdrbzip.get(selectdraw[0]) - floatvtladdrbzip.get(selectdraw[j-1]));
          for(int i = 0; i < j; i++)
          {
            if(readbzip.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadbzip) * log(readbzip.get(selectdraw[i]))));
            } 
            else if(writebzip.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritebzip) * log(writebzip.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecbzip) * log(execbzip.get(selectdraw[i]))));
            }    
            //line(width * 0.3 + width * 0.4 / drawlength * (floatvtladdrbzip.get(selectdraw[i]) - floatvtladdrbzip.get(selectdraw[0])), height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrbzip * floatphyaddrbzip.get(selectdraw[i]), height * 0.4);
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / 2.0, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrbzip * floatphyaddrbzip.get(selectdraw[i]), height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / 2.0, height * 0.2);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.19);
              text(phyaddrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrbzip * floatphyaddrbzip.get(selectdraw[i]), height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrbzip * floatphyaddrbzip.get(selectdraw[i]), height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
                text(phyaddrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrbzip * floatphyaddrbzip.get(selectdraw[i]), height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
              }
            }                        
          } 
        }
        else
        {
          float selectphyaddr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatphyaddrbzip;
          //println("select phyaddr:" + selectphyaddr);
          int selecti = -1;
          float diff = maxfloatphyaddrbzip;
          for(int i = 0; i < countbzip; i++)
          {
            if(abs(selectphyaddr - floatphyaddrbzip.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectphyaddr - floatphyaddrbzip.get(i));
            }
          }
          //println("select phyaddr diff:" + diff);
          //println("select phyaddr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatphyaddrbzip;
          for(int i = 0; i < countbzip; i++)
          {
            if(abs(floatphyaddrbzip.get(selecti) - sortphyaddrbzip[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatphyaddrbzip.get(selecti) - sortphyaddrbzip[i]);
            }
          }
          //println("select phyaddr sort diff:" + diff);
          //println("select phyaddr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countbzip - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatphyaddrbzip;
            for(int i = 0; i < countbzip; i++)
            {
              if(abs(sortphyaddrbzip[selectsorti - j / 2 + k] - floatphyaddrbzip.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortphyaddrbzip[selectsorti - j / 2 + k] - floatphyaddrbzip.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw phy diff:" + diff);
            //println("draw phy i:" + selectdraw[k]);
          }
          for(int i = 0; i < j; i++)
          {
            if(readbzip.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadbzip) * log(readbzip.get(selectdraw[i]))));
            } 
            else if(writebzip.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritebzip) * log(writebzip.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecbzip) * log(execbzip.get(selectdraw[i]))));
            }           
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrbzip * floatvtladdrbzip.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrbzip * floatvtladdrbzip.get(selectdraw[i]), height * 0.19);
              text(phyaddrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrbzip * floatvtladdrbzip.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrbzip * floatvtladdrbzip.get(selectdraw[i]), height * 0.19);
                text(phyaddrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(phyaddrbzip.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43);
              }
            }                        
          } 
        }
      }  
      /*textSize(10);
      fill(0);
      text("Virtual address:" + vtladdrbzip.get(selecti), 461, 101);
      text("Physical address:" + phyaddrbzip.get(selecti), 461, 111);
      text("Access:" + accessbzip.get(selecti), 461, 121);
      text("Read:" + readbzip.get(selecti), 461, 131);
      text("Write:" + writebzip.get(selecti), 461, 141);
      text("Exec:" + execbzip.get(selecti), 461, 151);     
      stroke(0);
      fill(255, 0);
      rect(451, 86, 150, 70);*/
        
      /*if(readbzip.get(selecti) > 0) 
      {
        stroke(30, 144, 255, int(float(255) / log(maxaccessbzip) * log(accessbzip.get(selecti))));
      } 
      else if(writebzip.get(selecti) > 0) 
      {
        stroke(50, 205, 50, int(float(255) / log(maxaccessbzip) * log(accessbzip.get(selecti))));
      } 
      else 
      {
        stroke(255, 20, 147, int(float(255) / log(maxaccessbzip) * log(accessbzip.get(selecti))));
      }    
      line(51.0 + float(950 - 50) / maxfloatvtladdrbzip * floatvtladdrbzip.get(selecti), 201, 51.0 + float(950 - 50) / maxfloatphyaddrbzip * floatphyaddrbzip.get(selecti), 300); 
      
      textSize(10);
      fill(0);  
      text(vtladdrbzip.get(selecti), 51.0 + float(950 - 50) / maxfloatvtladdrbzip * floatvtladdrbzip.get(selecti), 191);
      text(phyaddrbzip.get(selecti), 51.0 + float(950 - 50) / maxfloatphyaddrbzip * floatphyaddrbzip.get(selecti), 310);*/ 
    }
    else
    {
      stroke(0);
      line(width * 0.1, height * 0.1, width * 0.9, height * 0.1);
      line(width * 0.1, height * 0.3, width * 0.9, height * 0.3);
      line(width * 0.1, height * 0.4, width * 0.9, height * 0.4);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.7, width * 0.9, height * 0.7);
      line(width * 0.1, height * 0.9, width * 0.9, height * 0.9);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.1, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.09);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.3, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.31);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.4, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.39);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.61);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.7, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.69);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.9, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.91);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.09);
      text(0, width * 0.08, height * 0.09);
      text(maxvtladdrbzip, width * 0.92, height * 0.09);
      text("Phy", width * 0.05, height * 0.32);
      text(0, width * 0.08, height * 0.32);
      text(maxphyaddrbzip, width * 0.92, height * 0.32);
      text("Vtl", width * 0.05, height * 0.39);
      text(0, width * 0.08, height * 0.39);
      text(maxvtladdrbzip, width * 0.92, height * 0.39);
      text("Phy", width * 0.05, height * 0.62);
      text(0, width * 0.08, height * 0.62);
      text(maxphyaddrbzip, width * 0.92, height * 0.62);
      text("Vtl", width * 0.05, height * 0.69);
      text(0, width * 0.08, height * 0.69);
      text(maxvtladdrbzip, width * 0.92, height * 0.69);
      text("Phy", width * 0.05, height * 0.92);
      text(0, width * 0.08, height * 0.92);
      text(maxphyaddrbzip, width * 0.92, height * 0.92);
      for(int i = 0; i < countbzip; i++) 
      {         
        if(readbzip.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadbzip) * log(readbzip.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(i), height * 0.1, width * 0.1 + width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(i), height * 0.3);        
        } 
        if(writebzip.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritebzip) * log(writebzip.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(i), height * 0.4, width * 0.1 + width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(i), height * 0.6);        
        } 
        if(execbzip.get(i) > 0) 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecbzip) * log(execbzip.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(i), height * 0.7, width * 0.1 + width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(i), height * 0.9);        
        }    
      }          
    }
  }
  
  if(showgcc == true)
  {
    fill(0);    
    textSize(width * 0.02);
    text("gcc", width * 0.25, height * 0.06);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.4, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.41, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.5, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Different Type", width * 0.505, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.6, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Menu", width * 0.625, height * 0.05);

    stroke(0);
    fill(255, 0);
    rect(width * 0.3, height * 0.92, width * 0.35, height * 0.06);    
    strokeWeight(5);
    stroke(30, 144, 255);
    line(width * 0.31, height * 0.94, width * 0.34, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Read", width * 0.315, height * 0.97);
    stroke(50, 205, 50);
    line(width * 0.36, height * 0.94, width * 0.39, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Write", width * 0.365, height * 0.97);
    stroke(255, 20, 147);
    line(width * 0.41, height * 0.94, width * 0.44, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Exec", width * 0.415, height * 0.97);
    strokeWeight(1);
    stroke(0);
    line(width * 0.5, height * 0.95, width * 0.55, height * 0.95);
    line(width * 0.5, height * 0.95, width * 0.5, height * 0.94);
    line(width * 0.55, height * 0.95, width * 0.55, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Vtl", width * 0.52, height * 0.945);
    stroke(0);
    line(width * 0.57, height * 0.95, width * 0.62, height * 0.95);
    line(width * 0.57, height * 0.95, width * 0.57, height * 0.94);
    line(width * 0.62, height * 0.95, width * 0.62, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Phy", width * 0.59, height * 0.945);
    text(int(maxfloatvtladdrgcc / maxfloatphyaddrgcc), width * 0.52, height * 0.975);
    text(":", width * 0.56, height * 0.975);
    text(1, width * 0.595, height * 0.975);
    
    if(showdetailgcc == false)
    {
      stroke(0);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.8, width * 0.9, height * 0.8);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.59);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.8, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.81);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.59);
      text(0, width * 0.08, height * 0.59);
      text(maxvtladdrgcc, width * 0.92, height * 0.59);
      text("Phy", width * 0.05, height * 0.82);
      text(0, width * 0.08, height * 0.82);
      text(maxphyaddrgcc, width * 0.92, height * 0.82);
      
      for(int i = 0; i < countgcc; i++) 
      {    
        if(readgcc.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadgcc) * log(readgcc.get(i))));
        } 
        else if(writegcc.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritegcc) * log(writegcc.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecgcc) * log(execgcc.get(i))));
        }    
        line(width * 0.1 + width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(i), height * 0.6, width * 0.1 + width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(i), height * 0.8);
      }    
      
      if(figureover == true)
      {
        stroke(0);
        fill(255, 0);
        rect(width * 0.28, height * 0.15, width * 0.5, height * 0.3);
        stroke(0);
        line(width * 0.3, height * 0.2, width * 0.7, height * 0.2);
        line(width * 0.3, height * 0.4, width * 0.7, height * 0.4);
      
        if(mouseY < height * 0.7)
        {
          float selectvtladdr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatvtladdrgcc;
          //println("select vtladdr:" + selectvtladdr);
          int selecti = -1;
          float diff = maxfloatvtladdrgcc;
          for(int i = 0; i < countgcc; i++)
          {
            if(abs(selectvtladdr - floatvtladdrgcc.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectvtladdr - floatvtladdrgcc.get(i));
            }
          }
          //println("select vtladdr diff:" + diff);
          //println("select vtladdr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatvtladdrgcc;
          for(int i = 0; i < countgcc; i++)
          {
            if(abs(floatvtladdrgcc.get(selecti) - sortvtladdrgcc[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatvtladdrgcc.get(selecti) - sortvtladdrgcc[i]);
            }
          }
          //println("select vtladdr sort diff:" + diff);
          //println("select vtladdr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countgcc - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatvtladdrgcc;
            for(int i = 0; i < countgcc; i++)
            {
              if(abs(sortvtladdrgcc[selectsorti - j / 2 + k] - floatvtladdrgcc.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortvtladdrgcc[selectsorti - j / 2 + k] - floatvtladdrgcc.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw vtl diff:" + diff);
            //println("draw vtl i:" + selectdraw[k]);
          }

          for(int i = 0; i < j; i++)
          {
            if(readgcc.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadgcc) * log(readgcc.get(selectdraw[i]))));
            } 
            else if(writegcc.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritegcc) * log(writegcc.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecgcc) * log(execgcc.get(selectdraw[i]))));
            }    
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / 2.0, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrgcc * floatphyaddrgcc.get(selectdraw[i]), height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / 2.0, height * 0.2);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.19);
              text(phyaddrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrgcc * floatphyaddrgcc.get(selectdraw[i]), height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrgcc * floatphyaddrgcc.get(selectdraw[i]), height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
                text(phyaddrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrgcc * floatphyaddrgcc.get(selectdraw[i]), height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
              }
            }                        
          } 
        }
        else
        {
          float selectphyaddr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatphyaddrgcc;
          //println("select phyaddr:" + selectphyaddr);
          int selecti = -1;
          float diff = maxfloatphyaddrgcc;
          for(int i = 0; i < countgcc; i++)
          {
            if(abs(selectphyaddr - floatphyaddrgcc.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectphyaddr - floatphyaddrgcc.get(i));
            }
          }
          //println("select phyaddr diff:" + diff);
          //println("select phyaddr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatphyaddrgcc;
          for(int i = 0; i < countgcc; i++)
          {
            if(abs(floatphyaddrgcc.get(selecti) - sortphyaddrgcc[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatphyaddrgcc.get(selecti) - sortphyaddrgcc[i]);
            }
          }
          //println("select phyaddr sort diff:" + diff);
          //println("select phyaddr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countgcc - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatphyaddrgcc;
            for(int i = 0; i < countgcc; i++)
            {
              if(abs(sortphyaddrgcc[selectsorti - j / 2 + k] - floatphyaddrgcc.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortphyaddrgcc[selectsorti - j / 2 + k] - floatphyaddrgcc.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw phy diff:" + diff);
            //println("draw phy i:" + selectdraw[k]);
          }
          for(int i = 0; i < j; i++)
          {
            if(readgcc.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadgcc) * log(readgcc.get(selectdraw[i]))));
            } 
            else if(writegcc.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritegcc) * log(writegcc.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecgcc) * log(execgcc.get(selectdraw[i]))));
            }           
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrgcc * floatvtladdrgcc.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrgcc * floatvtladdrgcc.get(selectdraw[i]), height * 0.19);
              text(phyaddrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrgcc * floatvtladdrgcc.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrgcc * floatvtladdrgcc.get(selectdraw[i]), height * 0.19);
                text(phyaddrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(phyaddrgcc.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43);
              }
            }                        
          } 
        }
      }  
    }
    else
    {
      stroke(0);
      line(width * 0.1, height * 0.1, width * 0.9, height * 0.1);
      line(width * 0.1, height * 0.3, width * 0.9, height * 0.3);
      line(width * 0.1, height * 0.4, width * 0.9, height * 0.4);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.7, width * 0.9, height * 0.7);
      line(width * 0.1, height * 0.9, width * 0.9, height * 0.9);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.1, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.09);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.3, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.31);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.4, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.39);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.61);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.7, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.69);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.9, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.91);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.09);
      text(0, width * 0.08, height * 0.09);
      text(maxvtladdrgcc, width * 0.92, height * 0.09);
      text("Phy", width * 0.05, height * 0.32);
      text(0, width * 0.08, height * 0.32);
      text(maxphyaddrgcc, width * 0.92, height * 0.32);
      text("Vtl", width * 0.05, height * 0.39);
      text(0, width * 0.08, height * 0.39);
      text(maxvtladdrgcc, width * 0.92, height * 0.39);
      text("Phy", width * 0.05, height * 0.62);
      text(0, width * 0.08, height * 0.62);
      text(maxphyaddrgcc, width * 0.92, height * 0.62);
      text("Vtl", width * 0.05, height * 0.69);
      text(0, width * 0.08, height * 0.69);
      text(maxvtladdrgcc, width * 0.92, height * 0.69);
      text("Phy", width * 0.05, height * 0.92);
      text(0, width * 0.08, height * 0.92);
      text(maxphyaddrgcc, width * 0.92, height * 0.92);
      for(int i = 0; i < countgcc; i++) 
      {         
        if(readgcc.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadgcc) * log(readgcc.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(i), height * 0.1, width * 0.1 + width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(i), height * 0.3);        
        } 
        if(writegcc.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritegcc) * log(writegcc.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(i), height * 0.4, width * 0.1 + width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(i), height * 0.6);        
        } 
        if(execgcc.get(i) > 0) 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecgcc) * log(execgcc.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(i), height * 0.7, width * 0.1 + width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(i), height * 0.9);        
        }    
      }          
    }
  }
  
  if(showh264 == true)
  {
    fill(0);    
    textSize(width * 0.02);
    text("h264", width * 0.25, height * 0.06);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.4, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.41, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.5, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Different Type", width * 0.505, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.6, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Menu", width * 0.625, height * 0.05);

    stroke(0);
    fill(255, 0);
    rect(width * 0.3, height * 0.92, width * 0.35, height * 0.06);    
    strokeWeight(5);
    stroke(30, 144, 255);
    line(width * 0.31, height * 0.94, width * 0.34, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Read", width * 0.315, height * 0.97);
    stroke(50, 205, 50);
    line(width * 0.36, height * 0.94, width * 0.39, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Write", width * 0.365, height * 0.97);
    stroke(255, 20, 147);
    line(width * 0.41, height * 0.94, width * 0.44, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Exec", width * 0.415, height * 0.97);
    strokeWeight(1);
    stroke(0);
    line(width * 0.5, height * 0.95, width * 0.55, height * 0.95);
    line(width * 0.5, height * 0.95, width * 0.5, height * 0.94);
    line(width * 0.55, height * 0.95, width * 0.55, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Vtl", width * 0.52, height * 0.945);
    stroke(0);
    line(width * 0.57, height * 0.95, width * 0.62, height * 0.95);
    line(width * 0.57, height * 0.95, width * 0.57, height * 0.94);
    line(width * 0.62, height * 0.95, width * 0.62, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Phy", width * 0.59, height * 0.945);
    text(int(maxfloatvtladdrh264 / maxfloatphyaddrh264), width * 0.52, height * 0.975);
    text(":", width * 0.56, height * 0.975);
    text(1, width * 0.595, height * 0.975);
    
    if(showdetailh264 == false)
    {
      stroke(0);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.8, width * 0.9, height * 0.8);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.59);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.8, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.81);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.59);
      text(0, width * 0.08, height * 0.59);
      text(maxvtladdrh264, width * 0.92, height * 0.59);
      text("Phy", width * 0.05, height * 0.82);
      text(0, width * 0.08, height * 0.82);
      text(maxphyaddrh264, width * 0.92, height * 0.82);
      
      for(int i = 0; i < counth264; i++) 
      {    
        if(readh264.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadh264) * log(readh264.get(i))));
        } 
        else if(writeh264.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwriteh264) * log(writeh264.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexech264) * log(exech264.get(i))));
        }    
        line(width * 0.1 + width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(i), height * 0.6, width * 0.1 + width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(i), height * 0.8);
      }    
      
      if(figureover == true)
      {
        stroke(0);
        fill(255, 0);
        rect(width * 0.28, height * 0.15, width * 0.5, height * 0.3);
        stroke(0);
        line(width * 0.3, height * 0.2, width * 0.7, height * 0.2);
        line(width * 0.3, height * 0.4, width * 0.7, height * 0.4);
      
        if(mouseY < height * 0.7)
        {
          float selectvtladdr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatvtladdrh264;
          //println("select vtladdr:" + selectvtladdr);
          int selecti = -1;
          float diff = maxfloatvtladdrh264;
          for(int i = 0; i < counth264; i++)
          {
            if(abs(selectvtladdr - floatvtladdrh264.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectvtladdr - floatvtladdrh264.get(i));
            }
          }
          //println("select vtladdr diff:" + diff);
          //println("select vtladdr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatvtladdrh264;
          for(int i = 0; i < counth264; i++)
          {
            if(abs(floatvtladdrh264.get(selecti) - sortvtladdrh264[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatvtladdrh264.get(selecti) - sortvtladdrh264[i]);
            }
          }
          //println("select vtladdr sort diff:" + diff);
          //println("select vtladdr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= counth264 - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatvtladdrh264;
            for(int i = 0; i < counth264; i++)
            {
              if(abs(sortvtladdrh264[selectsorti - j / 2 + k] - floatvtladdrh264.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortvtladdrh264[selectsorti - j / 2 + k] - floatvtladdrh264.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw vtl diff:" + diff);
            //println("draw vtl i:" + selectdraw[k]);
          }

          for(int i = 0; i < j; i++)
          {
            if(readh264.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadh264) * log(readh264.get(selectdraw[i]))));
            } 
            else if(writeh264.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwriteh264) * log(writeh264.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexech264) * log(exech264.get(selectdraw[i]))));
            }    
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / 2.0, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrh264 * floatphyaddrh264.get(selectdraw[i]), height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / 2.0, height * 0.2);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.19);
              text(phyaddrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrh264 * floatphyaddrh264.get(selectdraw[i]), height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrh264 * floatphyaddrh264.get(selectdraw[i]), height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
                text(phyaddrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrh264 * floatphyaddrh264.get(selectdraw[i]), height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
              }
            }                        
          } 
        }
        else
        {
          float selectphyaddr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatphyaddrh264;
          //println("select phyaddr:" + selectphyaddr);
          int selecti = -1;
          float diff = maxfloatphyaddrh264;
          for(int i = 0; i < counth264; i++)
          {
            if(abs(selectphyaddr - floatphyaddrh264.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectphyaddr - floatphyaddrh264.get(i));
            }
          }
          //println("select phyaddr diff:" + diff);
          //println("select phyaddr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatphyaddrh264;
          for(int i = 0; i < counth264; i++)
          {
            if(abs(floatphyaddrh264.get(selecti) - sortphyaddrh264[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatphyaddrh264.get(selecti) - sortphyaddrh264[i]);
            }
          }
          //println("select phyaddr sort diff:" + diff);
          //println("select phyaddr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= counth264 - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatphyaddrh264;
            for(int i = 0; i < counth264; i++)
            {
              if(abs(sortphyaddrh264[selectsorti - j / 2 + k] - floatphyaddrh264.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortphyaddrh264[selectsorti - j / 2 + k] - floatphyaddrh264.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw phy diff:" + diff);
            //println("draw phy i:" + selectdraw[k]);
          }
          for(int i = 0; i < j; i++)
          {
            if(readh264.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadh264) * log(readh264.get(selectdraw[i]))));
            } 
            else if(writeh264.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwriteh264) * log(writeh264.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexech264) * log(exech264.get(selectdraw[i]))));
            }           
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrh264 * floatvtladdrh264.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrh264 * floatvtladdrh264.get(selectdraw[i]), height * 0.19);
              text(phyaddrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrh264 * floatvtladdrh264.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrh264 * floatvtladdrh264.get(selectdraw[i]), height * 0.19);
                text(phyaddrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(phyaddrh264.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43);
              }
            }                        
          } 
        }
      }  
    }
    else
    {
      stroke(0);
      line(width * 0.1, height * 0.1, width * 0.9, height * 0.1);
      line(width * 0.1, height * 0.3, width * 0.9, height * 0.3);
      line(width * 0.1, height * 0.4, width * 0.9, height * 0.4);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.7, width * 0.9, height * 0.7);
      line(width * 0.1, height * 0.9, width * 0.9, height * 0.9);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.1, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.09);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.3, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.31);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.4, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.39);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.61);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.7, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.69);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.9, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.91);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.09);
      text(0, width * 0.08, height * 0.09);
      text(maxvtladdrh264, width * 0.92, height * 0.09);
      text("Phy", width * 0.05, height * 0.32);
      text(0, width * 0.08, height * 0.32);
      text(maxphyaddrh264, width * 0.92, height * 0.32);
      text("Vtl", width * 0.05, height * 0.39);
      text(0, width * 0.08, height * 0.39);
      text(maxvtladdrh264, width * 0.92, height * 0.39);
      text("Phy", width * 0.05, height * 0.62);
      text(0, width * 0.08, height * 0.62);
      text(maxphyaddrh264, width * 0.92, height * 0.62);
      text("Vtl", width * 0.05, height * 0.69);
      text(0, width * 0.08, height * 0.69);
      text(maxvtladdrh264, width * 0.92, height * 0.69);
      text("Phy", width * 0.05, height * 0.92);
      text(0, width * 0.08, height * 0.92);
      text(maxphyaddrh264, width * 0.92, height * 0.92);
      for(int i = 0; i < counth264; i++) 
      {         
        if(readh264.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadh264) * log(readh264.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(i), height * 0.1, width * 0.1 + width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(i), height * 0.3);        
        } 
        if(writeh264.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwriteh264) * log(writeh264.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(i), height * 0.4, width * 0.1 + width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(i), height * 0.6);        
        } 
        if(exech264.get(i) > 0) 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexech264) * log(exech264.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(i), height * 0.7, width * 0.1 + width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(i), height * 0.9);        
        }    
      }          
    }
  }

  if(showhmmer == true)
  {
    fill(0);    
    textSize(width * 0.02);
    text("hmmer", width * 0.25, height * 0.06);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.4, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.41, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.5, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Different Type", width * 0.505, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.6, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Menu", width * 0.625, height * 0.05);

    stroke(0);
    fill(255, 0);
    rect(width * 0.3, height * 0.92, width * 0.35, height * 0.06);    
    strokeWeight(5);
    stroke(30, 144, 255);
    line(width * 0.31, height * 0.94, width * 0.34, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Read", width * 0.315, height * 0.97);
    stroke(50, 205, 50);
    line(width * 0.36, height * 0.94, width * 0.39, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Write", width * 0.365, height * 0.97);
    stroke(255, 20, 147);
    line(width * 0.41, height * 0.94, width * 0.44, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Exec", width * 0.415, height * 0.97);
    strokeWeight(1);
    stroke(0);
    line(width * 0.5, height * 0.95, width * 0.55, height * 0.95);
    line(width * 0.5, height * 0.95, width * 0.5, height * 0.94);
    line(width * 0.55, height * 0.95, width * 0.55, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Vtl", width * 0.52, height * 0.945);
    stroke(0);
    line(width * 0.57, height * 0.95, width * 0.62, height * 0.95);
    line(width * 0.57, height * 0.95, width * 0.57, height * 0.94);
    line(width * 0.62, height * 0.95, width * 0.62, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Phy", width * 0.59, height * 0.945);
    text(int(maxfloatvtladdrhmmer / maxfloatphyaddrhmmer), width * 0.52, height * 0.975);
    text(":", width * 0.56, height * 0.975);
    text(1, width * 0.595, height * 0.975);
    
    if(showdetailhmmer == false)
    {
      stroke(0);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.8, width * 0.9, height * 0.8);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.59);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.8, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.81);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.59);
      text(0, width * 0.08, height * 0.59);
      text(maxvtladdrhmmer, width * 0.92, height * 0.59);
      text("Phy", width * 0.05, height * 0.82);
      text(0, width * 0.08, height * 0.82);
      text(maxphyaddrhmmer, width * 0.92, height * 0.82);
      
      for(int i = 0; i < counthmmer; i++) 
      {    
        if(readhmmer.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadhmmer) * log(readhmmer.get(i))));
        } 
        else if(writehmmer.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritehmmer) * log(writehmmer.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexechmmer) * log(exechmmer.get(i))));
        }    
        line(width * 0.1 + width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(i), height * 0.6, width * 0.1 + width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(i), height * 0.8);
      }    
      
      if(figureover == true)
      {
        stroke(0);
        fill(255, 0);
        rect(width * 0.28, height * 0.15, width * 0.5, height * 0.3);
        stroke(0);
        line(width * 0.3, height * 0.2, width * 0.7, height * 0.2);
        line(width * 0.3, height * 0.4, width * 0.7, height * 0.4);
      
        if(mouseY < height * 0.7)
        {
          float selectvtladdr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatvtladdrhmmer;
          //println("select vtladdr:" + selectvtladdr);
          int selecti = -1;
          float diff = maxfloatvtladdrhmmer;
          for(int i = 0; i < counthmmer; i++)
          {
            if(abs(selectvtladdr - floatvtladdrhmmer.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectvtladdr - floatvtladdrhmmer.get(i));
            }
          }
          //println("select vtladdr diff:" + diff);
          //println("select vtladdr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatvtladdrhmmer;
          for(int i = 0; i < counthmmer; i++)
          {
            if(abs(floatvtladdrhmmer.get(selecti) - sortvtladdrhmmer[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatvtladdrhmmer.get(selecti) - sortvtladdrhmmer[i]);
            }
          }
          //println("select vtladdr sort diff:" + diff);
          //println("select vtladdr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= counthmmer - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatvtladdrhmmer;
            for(int i = 0; i < counthmmer; i++)
            {
              if(abs(sortvtladdrhmmer[selectsorti - j / 2 + k] - floatvtladdrhmmer.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortvtladdrhmmer[selectsorti - j / 2 + k] - floatvtladdrhmmer.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw vtl diff:" + diff);
            //println("draw vtl i:" + selectdraw[k]);
          }

          for(int i = 0; i < j; i++)
          {
            if(readhmmer.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadhmmer) * log(readhmmer.get(selectdraw[i]))));
            } 
            else if(writehmmer.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritehmmer) * log(writehmmer.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexechmmer) * log(exechmmer.get(selectdraw[i]))));
            }    
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / 2.0, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(selectdraw[i]), height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / 2.0, height * 0.2);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.19);
              text(phyaddrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(selectdraw[i]), height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(selectdraw[i]), height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
                text(phyaddrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(selectdraw[i]), height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
              }
            }                        
          } 
        }
        else
        {
          float selectphyaddr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatphyaddrhmmer;
          //println("select phyaddr:" + selectphyaddr);
          int selecti = -1;
          float diff = maxfloatphyaddrhmmer;
          for(int i = 0; i < counthmmer; i++)
          {
            if(abs(selectphyaddr - floatphyaddrhmmer.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectphyaddr - floatphyaddrhmmer.get(i));
            }
          }
          //println("select phyaddr diff:" + diff);
          //println("select phyaddr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatphyaddrhmmer;
          for(int i = 0; i < counthmmer; i++)
          {
            if(abs(floatphyaddrhmmer.get(selecti) - sortphyaddrhmmer[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatphyaddrhmmer.get(selecti) - sortphyaddrhmmer[i]);
            }
          }
          //println("select phyaddr sort diff:" + diff);
          //println("select phyaddr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= counthmmer - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatphyaddrhmmer;
            for(int i = 0; i < counthmmer; i++)
            {
              if(abs(sortphyaddrhmmer[selectsorti - j / 2 + k] - floatphyaddrhmmer.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortphyaddrhmmer[selectsorti - j / 2 + k] - floatphyaddrhmmer.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw phy diff:" + diff);
            //println("draw phy i:" + selectdraw[k]);
          }
          for(int i = 0; i < j; i++)
          {
            if(readhmmer.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadhmmer) * log(readhmmer.get(selectdraw[i]))));
            } 
            else if(writehmmer.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritehmmer) * log(writehmmer.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexechmmer) * log(exechmmer.get(selectdraw[i]))));
            }           
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(selectdraw[i]), height * 0.19);
              text(phyaddrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(selectdraw[i]), height * 0.19);
                text(phyaddrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(phyaddrhmmer.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43);
              }
            }                        
          } 
        }
      }  
    }
    else
    {
      stroke(0);
      line(width * 0.1, height * 0.1, width * 0.9, height * 0.1);
      line(width * 0.1, height * 0.3, width * 0.9, height * 0.3);
      line(width * 0.1, height * 0.4, width * 0.9, height * 0.4);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.7, width * 0.9, height * 0.7);
      line(width * 0.1, height * 0.9, width * 0.9, height * 0.9);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.1, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.09);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.3, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.31);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.4, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.39);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.61);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.7, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.69);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.9, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.91);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.09);
      text(0, width * 0.08, height * 0.09);
      text(maxvtladdrhmmer, width * 0.92, height * 0.09);
      text("Phy", width * 0.05, height * 0.32);
      text(0, width * 0.08, height * 0.32);
      text(maxphyaddrhmmer, width * 0.92, height * 0.32);
      text("Vtl", width * 0.05, height * 0.39);
      text(0, width * 0.08, height * 0.39);
      text(maxvtladdrhmmer, width * 0.92, height * 0.39);
      text("Phy", width * 0.05, height * 0.62);
      text(0, width * 0.08, height * 0.62);
      text(maxphyaddrhmmer, width * 0.92, height * 0.62);
      text("Vtl", width * 0.05, height * 0.69);
      text(0, width * 0.08, height * 0.69);
      text(maxvtladdrhmmer, width * 0.92, height * 0.69);
      text("Phy", width * 0.05, height * 0.92);
      text(0, width * 0.08, height * 0.92);
      text(maxphyaddrhmmer, width * 0.92, height * 0.92);
      for(int i = 0; i < counthmmer; i++) 
      {         
        if(readhmmer.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadhmmer) * log(readhmmer.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(i), height * 0.1, width * 0.1 + width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(i), height * 0.3);        
        } 
        if(writehmmer.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritehmmer) * log(writehmmer.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(i), height * 0.4, width * 0.1 + width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(i), height * 0.6);        
        } 
        if(exechmmer.get(i) > 0) 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexechmmer) * log(exechmmer.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(i), height * 0.7, width * 0.1 + width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(i), height * 0.9);        
        }    
      }          
    }
  }

  if(showlibquantum == true)
  {
    fill(0);    
    textSize(width * 0.02);
    text("libquantum", width * 0.25, height * 0.06);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.4, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.41, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.5, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Different Type", width * 0.505, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.6, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Menu", width * 0.625, height * 0.05);

    stroke(0);
    fill(255, 0);
    rect(width * 0.3, height * 0.92, width * 0.35, height * 0.06);    
    strokeWeight(5);
    stroke(30, 144, 255);
    line(width * 0.31, height * 0.94, width * 0.34, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Read", width * 0.315, height * 0.97);
    stroke(50, 205, 50);
    line(width * 0.36, height * 0.94, width * 0.39, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Write", width * 0.365, height * 0.97);
    stroke(255, 20, 147);
    line(width * 0.41, height * 0.94, width * 0.44, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Exec", width * 0.415, height * 0.97);
    strokeWeight(1);
    stroke(0);
    line(width * 0.5, height * 0.95, width * 0.55, height * 0.95);
    line(width * 0.5, height * 0.95, width * 0.5, height * 0.94);
    line(width * 0.55, height * 0.95, width * 0.55, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Vtl", width * 0.52, height * 0.945);
    stroke(0);
    line(width * 0.57, height * 0.95, width * 0.62, height * 0.95);
    line(width * 0.57, height * 0.95, width * 0.57, height * 0.94);
    line(width * 0.62, height * 0.95, width * 0.62, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Phy", width * 0.59, height * 0.945);
    text(int(maxfloatvtladdrlibquantum / maxfloatphyaddrlibquantum), width * 0.52, height * 0.975);
    text(":", width * 0.56, height * 0.975);
    text(1, width * 0.595, height * 0.975);
    
    if(showdetaillibquantum == false)
    {
      stroke(0);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.8, width * 0.9, height * 0.8);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.59);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.8, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.81);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.59);
      text(0, width * 0.08, height * 0.59);
      text(maxvtladdrlibquantum, width * 0.92, height * 0.59);
      text("Phy", width * 0.05, height * 0.82);
      text(0, width * 0.08, height * 0.82);
      text(maxphyaddrlibquantum, width * 0.92, height * 0.82);
      
      for(int i = 0; i < countlibquantum; i++) 
      {    
        if(readlibquantum.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadlibquantum) * log(readlibquantum.get(i))));
        } 
        else if(writelibquantum.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritelibquantum) * log(writelibquantum.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexeclibquantum) * log(execlibquantum.get(i))));
        }    
        line(width * 0.1 + width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(i), height * 0.6, width * 0.1 + width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(i), height * 0.8);
      }    
      
      if(figureover == true)
      {
        stroke(0);
        fill(255, 0);
        rect(width * 0.28, height * 0.15, width * 0.5, height * 0.3);
        stroke(0);
        line(width * 0.3, height * 0.2, width * 0.7, height * 0.2);
        line(width * 0.3, height * 0.4, width * 0.7, height * 0.4);
      
        if(mouseY < height * 0.7)
        {
          float selectvtladdr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatvtladdrlibquantum;
          //println("select vtladdr:" + selectvtladdr);
          int selecti = -1;
          float diff = maxfloatvtladdrlibquantum;
          for(int i = 0; i < countlibquantum; i++)
          {
            if(abs(selectvtladdr - floatvtladdrlibquantum.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectvtladdr - floatvtladdrlibquantum.get(i));
            }
          }
          //println("select vtladdr diff:" + diff);
          //println("select vtladdr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatvtladdrlibquantum;
          for(int i = 0; i < countlibquantum; i++)
          {
            if(abs(floatvtladdrlibquantum.get(selecti) - sortvtladdrlibquantum[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatvtladdrlibquantum.get(selecti) - sortvtladdrlibquantum[i]);
            }
          }
          //println("select vtladdr sort diff:" + diff);
          //println("select vtladdr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countlibquantum - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatvtladdrlibquantum;
            for(int i = 0; i < countlibquantum; i++)
            {
              if(abs(sortvtladdrlibquantum[selectsorti - j / 2 + k] - floatvtladdrlibquantum.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortvtladdrlibquantum[selectsorti - j / 2 + k] - floatvtladdrlibquantum.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw vtl diff:" + diff);
            //println("draw vtl i:" + selectdraw[k]);
          }

          for(int i = 0; i < j; i++)
          {
            if(readlibquantum.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadlibquantum) * log(readlibquantum.get(selectdraw[i]))));
            } 
            else if(writelibquantum.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritelibquantum) * log(writelibquantum.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexeclibquantum) * log(execlibquantum.get(selectdraw[i]))));
            }    
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / 2.0, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(selectdraw[i]), height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / 2.0, height * 0.2);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.19);
              text(phyaddrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(selectdraw[i]), height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(selectdraw[i]), height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
                text(phyaddrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(selectdraw[i]), height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
              }
            }                        
          } 
        }
        else
        {
          float selectphyaddr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatphyaddrlibquantum;
          //println("select phyaddr:" + selectphyaddr);
          int selecti = -1;
          float diff = maxfloatphyaddrlibquantum;
          for(int i = 0; i < countlibquantum; i++)
          {
            if(abs(selectphyaddr - floatphyaddrlibquantum.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectphyaddr - floatphyaddrlibquantum.get(i));
            }
          }
          //println("select phyaddr diff:" + diff);
          //println("select phyaddr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatphyaddrlibquantum;
          for(int i = 0; i < countlibquantum; i++)
          {
            if(abs(floatphyaddrlibquantum.get(selecti) - sortphyaddrlibquantum[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatphyaddrlibquantum.get(selecti) - sortphyaddrlibquantum[i]);
            }
          }
          //println("select phyaddr sort diff:" + diff);
          //println("select phyaddr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countlibquantum - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatphyaddrlibquantum;
            for(int i = 0; i < countlibquantum; i++)
            {
              if(abs(sortphyaddrlibquantum[selectsorti - j / 2 + k] - floatphyaddrlibquantum.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortphyaddrlibquantum[selectsorti - j / 2 + k] - floatphyaddrlibquantum.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw phy diff:" + diff);
            //println("draw phy i:" + selectdraw[k]);
          }
          for(int i = 0; i < j; i++)
          {
            if(readlibquantum.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadlibquantum) * log(readlibquantum.get(selectdraw[i]))));
            } 
            else if(writelibquantum.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritelibquantum) * log(writelibquantum.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexeclibquantum) * log(execlibquantum.get(selectdraw[i]))));
            }           
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(selectdraw[i]), height * 0.19);
              text(phyaddrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(selectdraw[i]), height * 0.19);
                text(phyaddrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(phyaddrlibquantum.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43);
              }
            }                        
          } 
        }
      }  
    }
    else
    {
      stroke(0);
      line(width * 0.1, height * 0.1, width * 0.9, height * 0.1);
      line(width * 0.1, height * 0.3, width * 0.9, height * 0.3);
      line(width * 0.1, height * 0.4, width * 0.9, height * 0.4);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.7, width * 0.9, height * 0.7);
      line(width * 0.1, height * 0.9, width * 0.9, height * 0.9);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.1, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.09);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.3, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.31);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.4, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.39);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.61);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.7, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.69);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.9, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.91);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.09);
      text(0, width * 0.08, height * 0.09);
      text(maxvtladdrlibquantum, width * 0.92, height * 0.09);
      text("Phy", width * 0.05, height * 0.32);
      text(0, width * 0.08, height * 0.32);
      text(maxphyaddrlibquantum, width * 0.92, height * 0.32);
      text("Vtl", width * 0.05, height * 0.39);
      text(0, width * 0.08, height * 0.39);
      text(maxvtladdrlibquantum, width * 0.92, height * 0.39);
      text("Phy", width * 0.05, height * 0.62);
      text(0, width * 0.08, height * 0.62);
      text(maxphyaddrlibquantum, width * 0.92, height * 0.62);
      text("Vtl", width * 0.05, height * 0.69);
      text(0, width * 0.08, height * 0.69);
      text(maxvtladdrlibquantum, width * 0.92, height * 0.69);
      text("Phy", width * 0.05, height * 0.92);
      text(0, width * 0.08, height * 0.92);
      text(maxphyaddrlibquantum, width * 0.92, height * 0.92);
      for(int i = 0; i < countlibquantum; i++) 
      {         
        if(readlibquantum.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadlibquantum) * log(readlibquantum.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(i), height * 0.1, width * 0.1 + width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(i), height * 0.3);        
        } 
        if(writelibquantum.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritelibquantum) * log(writelibquantum.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(i), height * 0.4, width * 0.1 + width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(i), height * 0.6);        
        } 
        if(execlibquantum.get(i) > 0) 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexeclibquantum) * log(execlibquantum.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(i), height * 0.7, width * 0.1 + width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(i), height * 0.9);        
        }    
      }          
    }
  }

  if(showmcf == true)
  {
    fill(0);    
    textSize(width * 0.02);
    text("mcf", width * 0.25, height * 0.06);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.4, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.41, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.5, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Different Type", width * 0.505, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.6, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Menu", width * 0.625, height * 0.05);

    stroke(0);
    fill(255, 0);
    rect(width * 0.3, height * 0.92, width * 0.35, height * 0.06);    
    strokeWeight(5);
    stroke(30, 144, 255);
    line(width * 0.31, height * 0.94, width * 0.34, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Read", width * 0.315, height * 0.97);
    stroke(50, 205, 50);
    line(width * 0.36, height * 0.94, width * 0.39, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Write", width * 0.365, height * 0.97);
    stroke(255, 20, 147);
    line(width * 0.41, height * 0.94, width * 0.44, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Exec", width * 0.415, height * 0.97);
    strokeWeight(1);
    stroke(0);
    line(width * 0.5, height * 0.95, width * 0.55, height * 0.95);
    line(width * 0.5, height * 0.95, width * 0.5, height * 0.94);
    line(width * 0.55, height * 0.95, width * 0.55, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Vtl", width * 0.52, height * 0.945);
    stroke(0);
    line(width * 0.57, height * 0.95, width * 0.62, height * 0.95);
    line(width * 0.57, height * 0.95, width * 0.57, height * 0.94);
    line(width * 0.62, height * 0.95, width * 0.62, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Phy", width * 0.59, height * 0.945);
    text(int(maxfloatvtladdrmcf / maxfloatphyaddrmcf), width * 0.52, height * 0.975);
    text(":", width * 0.56, height * 0.975);
    text(1, width * 0.595, height * 0.975);
    
    if(showdetailmcf == false)
    {
      stroke(0);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.8, width * 0.9, height * 0.8);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.59);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.8, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.81);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.59);
      text(0, width * 0.08, height * 0.59);
      text(maxvtladdrmcf, width * 0.92, height * 0.59);
      text("Phy", width * 0.05, height * 0.82);
      text(0, width * 0.08, height * 0.82);
      text(maxphyaddrmcf, width * 0.92, height * 0.82);
      
      for(int i = 0; i < countmcf; i++) 
      {    
        if(readmcf.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadmcf) * log(readmcf.get(i))));
        } 
        else if(writemcf.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritemcf) * log(writemcf.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecmcf) * log(execmcf.get(i))));
        }    
        line(width * 0.1 + width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(i), height * 0.6, width * 0.1 + width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(i), height * 0.8);
      }    
      
      if(figureover == true)
      {
        stroke(0);
        fill(255, 0);
        rect(width * 0.28, height * 0.15, width * 0.5, height * 0.3);
        stroke(0);
        line(width * 0.3, height * 0.2, width * 0.7, height * 0.2);
        line(width * 0.3, height * 0.4, width * 0.7, height * 0.4);
      
        if(mouseY < height * 0.7)
        {
          float selectvtladdr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatvtladdrmcf;
          //println("select vtladdr:" + selectvtladdr);
          int selecti = -1;
          float diff = maxfloatvtladdrmcf;
          for(int i = 0; i < countmcf; i++)
          {
            if(abs(selectvtladdr - floatvtladdrmcf.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectvtladdr - floatvtladdrmcf.get(i));
            }
          }
          //println("select vtladdr diff:" + diff);
          //println("select vtladdr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatvtladdrmcf;
          for(int i = 0; i < countmcf; i++)
          {
            if(abs(floatvtladdrmcf.get(selecti) - sortvtladdrmcf[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatvtladdrmcf.get(selecti) - sortvtladdrmcf[i]);
            }
          }
          //println("select vtladdr sort diff:" + diff);
          //println("select vtladdr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countmcf - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatvtladdrmcf;
            for(int i = 0; i < countmcf; i++)
            {
              if(abs(sortvtladdrmcf[selectsorti - j / 2 + k] - floatvtladdrmcf.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortvtladdrmcf[selectsorti - j / 2 + k] - floatvtladdrmcf.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw vtl diff:" + diff);
            //println("draw vtl i:" + selectdraw[k]);
          }

          for(int i = 0; i < j; i++)
          {
            if(readmcf.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadmcf) * log(readmcf.get(selectdraw[i]))));
            } 
            else if(writemcf.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritemcf) * log(writemcf.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecmcf) * log(execmcf.get(selectdraw[i]))));
            }    
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / 2.0, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrmcf * floatphyaddrmcf.get(selectdraw[i]), height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / 2.0, height * 0.2);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.19);
              text(phyaddrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrmcf * floatphyaddrmcf.get(selectdraw[i]), height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrmcf * floatphyaddrmcf.get(selectdraw[i]), height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
                text(phyaddrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrmcf * floatphyaddrmcf.get(selectdraw[i]), height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
              }
            }                        
          } 
        }
        else
        {
          float selectphyaddr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatphyaddrmcf;
          //println("select phyaddr:" + selectphyaddr);
          int selecti = -1;
          float diff = maxfloatphyaddrmcf;
          for(int i = 0; i < countmcf; i++)
          {
            if(abs(selectphyaddr - floatphyaddrmcf.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectphyaddr - floatphyaddrmcf.get(i));
            }
          }
          //println("select phyaddr diff:" + diff);
          //println("select phyaddr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatphyaddrmcf;
          for(int i = 0; i < countmcf; i++)
          {
            if(abs(floatphyaddrmcf.get(selecti) - sortphyaddrmcf[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatphyaddrmcf.get(selecti) - sortphyaddrmcf[i]);
            }
          }
          //println("select phyaddr sort diff:" + diff);
          //println("select phyaddr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countmcf - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatphyaddrmcf;
            for(int i = 0; i < countmcf; i++)
            {
              if(abs(sortphyaddrmcf[selectsorti - j / 2 + k] - floatphyaddrmcf.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortphyaddrmcf[selectsorti - j / 2 + k] - floatphyaddrmcf.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw phy diff:" + diff);
            //println("draw phy i:" + selectdraw[k]);
          }
          for(int i = 0; i < j; i++)
          {
            if(readmcf.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadmcf) * log(readmcf.get(selectdraw[i]))));
            } 
            else if(writemcf.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritemcf) * log(writemcf.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecmcf) * log(execmcf.get(selectdraw[i]))));
            }           
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrmcf * floatvtladdrmcf.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrmcf * floatvtladdrmcf.get(selectdraw[i]), height * 0.19);
              text(phyaddrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrmcf * floatvtladdrmcf.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrmcf * floatvtladdrmcf.get(selectdraw[i]), height * 0.19);
                text(phyaddrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(phyaddrmcf.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43);
              }
            }                        
          } 
        }
      }  
    }
    else
    {
      stroke(0);
      line(width * 0.1, height * 0.1, width * 0.9, height * 0.1);
      line(width * 0.1, height * 0.3, width * 0.9, height * 0.3);
      line(width * 0.1, height * 0.4, width * 0.9, height * 0.4);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.7, width * 0.9, height * 0.7);
      line(width * 0.1, height * 0.9, width * 0.9, height * 0.9);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.1, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.09);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.3, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.31);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.4, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.39);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.61);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.7, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.69);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.9, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.91);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.09);
      text(0, width * 0.08, height * 0.09);
      text(maxvtladdrmcf, width * 0.92, height * 0.09);
      text("Phy", width * 0.05, height * 0.32);
      text(0, width * 0.08, height * 0.32);
      text(maxphyaddrmcf, width * 0.92, height * 0.32);
      text("Vtl", width * 0.05, height * 0.39);
      text(0, width * 0.08, height * 0.39);
      text(maxvtladdrmcf, width * 0.92, height * 0.39);
      text("Phy", width * 0.05, height * 0.62);
      text(0, width * 0.08, height * 0.62);
      text(maxphyaddrmcf, width * 0.92, height * 0.62);
      text("Vtl", width * 0.05, height * 0.69);
      text(0, width * 0.08, height * 0.69);
      text(maxvtladdrmcf, width * 0.92, height * 0.69);
      text("Phy", width * 0.05, height * 0.92);
      text(0, width * 0.08, height * 0.92);
      text(maxphyaddrmcf, width * 0.92, height * 0.92);
      for(int i = 0; i < countmcf; i++) 
      {         
        if(readmcf.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadmcf) * log(readmcf.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(i), height * 0.1, width * 0.1 + width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(i), height * 0.3);        
        } 
        if(writemcf.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritemcf) * log(writemcf.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(i), height * 0.4, width * 0.1 + width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(i), height * 0.6);        
        } 
        if(execmcf.get(i) > 0) 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecmcf) * log(execmcf.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(i), height * 0.7, width * 0.1 + width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(i), height * 0.9);        
        }    
      }          
    }
  }

  if(showsjeng == true)
  {
    fill(0);    
    textSize(width * 0.02);
    text("sjeng", width * 0.25, height * 0.06);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.4, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.41, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.5, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Different Type", width * 0.505, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.6, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Menu", width * 0.625, height * 0.05);

    stroke(0);
    fill(255, 0);
    rect(width * 0.3, height * 0.92, width * 0.35, height * 0.06);    
    strokeWeight(5);
    stroke(30, 144, 255);
    line(width * 0.31, height * 0.94, width * 0.34, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Read", width * 0.315, height * 0.97);
    stroke(50, 205, 50);
    line(width * 0.36, height * 0.94, width * 0.39, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Write", width * 0.365, height * 0.97);
    stroke(255, 20, 147);
    line(width * 0.41, height * 0.94, width * 0.44, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Exec", width * 0.415, height * 0.97);
    strokeWeight(1);
    stroke(0);
    line(width * 0.5, height * 0.95, width * 0.55, height * 0.95);
    line(width * 0.5, height * 0.95, width * 0.5, height * 0.94);
    line(width * 0.55, height * 0.95, width * 0.55, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Vtl", width * 0.52, height * 0.945);
    stroke(0);
    line(width * 0.57, height * 0.95, width * 0.62, height * 0.95);
    line(width * 0.57, height * 0.95, width * 0.57, height * 0.94);
    line(width * 0.62, height * 0.95, width * 0.62, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Phy", width * 0.59, height * 0.945);
    text(int(maxfloatvtladdrsjeng / maxfloatphyaddrsjeng), width * 0.52, height * 0.975);
    text(":", width * 0.56, height * 0.975);
    text(1, width * 0.595, height * 0.975);
    
    if(showdetailsjeng == false)
    {
      stroke(0);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.8, width * 0.9, height * 0.8);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.59);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.8, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.81);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.59);
      text(0, width * 0.08, height * 0.59);
      text(maxvtladdrsjeng, width * 0.92, height * 0.59);
      text("Phy", width * 0.05, height * 0.82);
      text(0, width * 0.08, height * 0.82);
      text(maxphyaddrsjeng, width * 0.92, height * 0.82);
      
      for(int i = 0; i < countsjeng; i++) 
      {    
        if(readsjeng.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadsjeng) * log(readsjeng.get(i))));
        } 
        else if(writesjeng.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritesjeng) * log(writesjeng.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecsjeng) * log(execsjeng.get(i))));
        }    
        line(width * 0.1 + width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(i), height * 0.6, width * 0.1 + width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(i), height * 0.8);
      }    
      
      if(figureover == true)
      {
        stroke(0);
        fill(255, 0);
        rect(width * 0.28, height * 0.15, width * 0.5, height * 0.3);
        stroke(0);
        line(width * 0.3, height * 0.2, width * 0.7, height * 0.2);
        line(width * 0.3, height * 0.4, width * 0.7, height * 0.4);
      
        if(mouseY < height * 0.7)
        {
          float selectvtladdr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatvtladdrsjeng;
          //println("select vtladdr:" + selectvtladdr);
          int selecti = -1;
          float diff = maxfloatvtladdrsjeng;
          for(int i = 0; i < countsjeng; i++)
          {
            if(abs(selectvtladdr - floatvtladdrsjeng.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectvtladdr - floatvtladdrsjeng.get(i));
            }
          }
          //println("select vtladdr diff:" + diff);
          //println("select vtladdr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatvtladdrsjeng;
          for(int i = 0; i < countsjeng; i++)
          {
            if(abs(floatvtladdrsjeng.get(selecti) - sortvtladdrsjeng[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatvtladdrsjeng.get(selecti) - sortvtladdrsjeng[i]);
            }
          }
          //println("select vtladdr sort diff:" + diff);
          //println("select vtladdr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countsjeng - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatvtladdrsjeng;
            for(int i = 0; i < countsjeng; i++)
            {
              if(abs(sortvtladdrsjeng[selectsorti - j / 2 + k] - floatvtladdrsjeng.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortvtladdrsjeng[selectsorti - j / 2 + k] - floatvtladdrsjeng.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw vtl diff:" + diff);
            //println("draw vtl i:" + selectdraw[k]);
          }

          for(int i = 0; i < j; i++)
          {
            if(readsjeng.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadsjeng) * log(readsjeng.get(selectdraw[i]))));
            } 
            else if(writesjeng.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritesjeng) * log(writesjeng.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecsjeng) * log(execsjeng.get(selectdraw[i]))));
            }    
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / 2.0, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(selectdraw[i]), height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / 2.0, height * 0.2);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.19);
              text(phyaddrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(selectdraw[i]), height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(selectdraw[i]), height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
                text(phyaddrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(selectdraw[i]), height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
              }
            }                        
          } 
        }
        else
        {
          float selectphyaddr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatphyaddrsjeng;
          //println("select phyaddr:" + selectphyaddr);
          int selecti = -1;
          float diff = maxfloatphyaddrsjeng;
          for(int i = 0; i < countsjeng; i++)
          {
            if(abs(selectphyaddr - floatphyaddrsjeng.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectphyaddr - floatphyaddrsjeng.get(i));
            }
          }
          //println("select phyaddr diff:" + diff);
          //println("select phyaddr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatphyaddrsjeng;
          for(int i = 0; i < countsjeng; i++)
          {
            if(abs(floatphyaddrsjeng.get(selecti) - sortphyaddrsjeng[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatphyaddrsjeng.get(selecti) - sortphyaddrsjeng[i]);
            }
          }
          //println("select phyaddr sort diff:" + diff);
          //println("select phyaddr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countsjeng - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatphyaddrsjeng;
            for(int i = 0; i < countsjeng; i++)
            {
              if(abs(sortphyaddrsjeng[selectsorti - j / 2 + k] - floatphyaddrsjeng.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortphyaddrsjeng[selectsorti - j / 2 + k] - floatphyaddrsjeng.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw phy diff:" + diff);
            //println("draw phy i:" + selectdraw[k]);
          }
          for(int i = 0; i < j; i++)
          {
            if(readsjeng.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadsjeng) * log(readsjeng.get(selectdraw[i]))));
            } 
            else if(writesjeng.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritesjeng) * log(writesjeng.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecsjeng) * log(execsjeng.get(selectdraw[i]))));
            }           
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(selectdraw[i]), height * 0.19);
              text(phyaddrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(selectdraw[i]), height * 0.19);
                text(phyaddrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(phyaddrsjeng.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43);
              }
            }                        
          } 
        }
      }  
    }
    else
    {
      stroke(0);
      line(width * 0.1, height * 0.1, width * 0.9, height * 0.1);
      line(width * 0.1, height * 0.3, width * 0.9, height * 0.3);
      line(width * 0.1, height * 0.4, width * 0.9, height * 0.4);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.7, width * 0.9, height * 0.7);
      line(width * 0.1, height * 0.9, width * 0.9, height * 0.9);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.1, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.09);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.3, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.31);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.4, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.39);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.61);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.7, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.69);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.9, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.91);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.09);
      text(0, width * 0.08, height * 0.09);
      text(maxvtladdrsjeng, width * 0.92, height * 0.09);
      text("Phy", width * 0.05, height * 0.32);
      text(0, width * 0.08, height * 0.32);
      text(maxphyaddrsjeng, width * 0.92, height * 0.32);
      text("Vtl", width * 0.05, height * 0.39);
      text(0, width * 0.08, height * 0.39);
      text(maxvtladdrsjeng, width * 0.92, height * 0.39);
      text("Phy", width * 0.05, height * 0.62);
      text(0, width * 0.08, height * 0.62);
      text(maxphyaddrsjeng, width * 0.92, height * 0.62);
      text("Vtl", width * 0.05, height * 0.69);
      text(0, width * 0.08, height * 0.69);
      text(maxvtladdrsjeng, width * 0.92, height * 0.69);
      text("Phy", width * 0.05, height * 0.92);
      text(0, width * 0.08, height * 0.92);
      text(maxphyaddrsjeng, width * 0.92, height * 0.92);
      for(int i = 0; i < countsjeng; i++) 
      {         
        if(readsjeng.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadsjeng) * log(readsjeng.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(i), height * 0.1, width * 0.1 + width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(i), height * 0.3);        
        } 
        if(writesjeng.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritesjeng) * log(writesjeng.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(i), height * 0.4, width * 0.1 + width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(i), height * 0.6);        
        } 
        if(execsjeng.get(i) > 0) 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecsjeng) * log(execsjeng.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(i), height * 0.7, width * 0.1 + width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(i), height * 0.9);        
        }    
      }          
    }
  }

  if(showxalancbmk == true)
  {
    fill(0);    
    textSize(width * 0.02);
    text("xalancbmk", width * 0.25, height * 0.06);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.4, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Total Access", width * 0.41, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.5, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Different Type", width * 0.505, height * 0.05);
    stroke(0);
    fill(224, 224, 224);
    rect(width * 0.6, height * 0.02, width * 0.08, height * 0.05);
    fill(0);    
    textSize(width * 0.01);
    text("Menu", width * 0.625, height * 0.05);

    stroke(0);
    fill(255, 0);
    rect(width * 0.3, height * 0.92, width * 0.35, height * 0.06);    
    strokeWeight(5);
    stroke(30, 144, 255);
    line(width * 0.31, height * 0.94, width * 0.34, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Read", width * 0.315, height * 0.97);
    stroke(50, 205, 50);
    line(width * 0.36, height * 0.94, width * 0.39, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Write", width * 0.365, height * 0.97);
    stroke(255, 20, 147);
    line(width * 0.41, height * 0.94, width * 0.44, height * 0.94); 
    fill(0);    
    textSize(width * 0.01);
    text("Exec", width * 0.415, height * 0.97);
    strokeWeight(1);
    stroke(0);
    line(width * 0.5, height * 0.95, width * 0.55, height * 0.95);
    line(width * 0.5, height * 0.95, width * 0.5, height * 0.94);
    line(width * 0.55, height * 0.95, width * 0.55, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Vtl", width * 0.52, height * 0.945);
    stroke(0);
    line(width * 0.57, height * 0.95, width * 0.62, height * 0.95);
    line(width * 0.57, height * 0.95, width * 0.57, height * 0.94);
    line(width * 0.62, height * 0.95, width * 0.62, height * 0.94);
    fill(0);    
    textSize(width * 0.01);
    text("Phy", width * 0.59, height * 0.945);
    text(int(maxfloatvtladdrxalancbmk / maxfloatphyaddrxalancbmk), width * 0.52, height * 0.975);
    text(":", width * 0.56, height * 0.975);
    text(1, width * 0.595, height * 0.975);
    
    if(showdetailxalancbmk == false)
    {
      stroke(0);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.8, width * 0.9, height * 0.8);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.59);
        line(width * 0.1 + width * 0.8 / 10 * i, height * 0.8, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.81);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.59);
      text(0, width * 0.08, height * 0.59);
      text(maxvtladdrxalancbmk, width * 0.92, height * 0.59);
      text("Phy", width * 0.05, height * 0.82);
      text(0, width * 0.08, height * 0.82);
      text(maxphyaddrxalancbmk, width * 0.92, height * 0.82);
      
      for(int i = 0; i < countxalancbmk; i++) 
      {    
        if(readxalancbmk.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadxalancbmk) * log(readxalancbmk.get(i))));
        } 
        else if(writexalancbmk.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritexalancbmk) * log(writexalancbmk.get(i))));
        } 
        else 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecxalancbmk) * log(execxalancbmk.get(i))));
        }    
        line(width * 0.1 + width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(i), height * 0.6, width * 0.1 + width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(i), height * 0.8);
      }    
      
      if(figureover == true)
      {
        stroke(0);
        fill(255, 0);
        rect(width * 0.28, height * 0.15, width * 0.5, height * 0.3);
        stroke(0);
        line(width * 0.3, height * 0.2, width * 0.7, height * 0.2);
        line(width * 0.3, height * 0.4, width * 0.7, height * 0.4);
      
        if(mouseY < height * 0.7)
        {
          float selectvtladdr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatvtladdrxalancbmk;
          //println("select vtladdr:" + selectvtladdr);
          int selecti = -1;
          float diff = maxfloatvtladdrxalancbmk;
          for(int i = 0; i < countxalancbmk; i++)
          {
            if(abs(selectvtladdr - floatvtladdrxalancbmk.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectvtladdr - floatvtladdrxalancbmk.get(i));
            }
          }
          //println("select vtladdr diff:" + diff);
          //println("select vtladdr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatvtladdrxalancbmk;
          for(int i = 0; i < countxalancbmk; i++)
          {
            if(abs(floatvtladdrxalancbmk.get(selecti) - sortvtladdrxalancbmk[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatvtladdrxalancbmk.get(selecti) - sortvtladdrxalancbmk[i]);
            }
          }
          //println("select vtladdr sort diff:" + diff);
          //println("select vtladdr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countxalancbmk - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatvtladdrxalancbmk;
            for(int i = 0; i < countxalancbmk; i++)
            {
              if(abs(sortvtladdrxalancbmk[selectsorti - j / 2 + k] - floatvtladdrxalancbmk.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortvtladdrxalancbmk[selectsorti - j / 2 + k] - floatvtladdrxalancbmk.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw vtl diff:" + diff);
            //println("draw vtl i:" + selectdraw[k]);
          }

          for(int i = 0; i < j; i++)
          {
            if(readxalancbmk.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadxalancbmk) * log(readxalancbmk.get(selectdraw[i]))));
            } 
            else if(writexalancbmk.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritexalancbmk) * log(writexalancbmk.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecxalancbmk) * log(execxalancbmk.get(selectdraw[i]))));
            }    
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / 2.0, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(selectdraw[i]), height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / 2.0, height * 0.2);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.19);
              text(phyaddrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(selectdraw[i]), height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2, width * 0.3 + width * 0.4 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(selectdraw[i]), height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(selectdraw[i]), height * 0.6, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.2);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
                text(phyaddrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(selectdraw[i]), height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.19);
              }
            }                        
          } 
        }
        else
        {
          float selectphyaddr = (mouseX - width * 0.1) / (width * 0.8) * maxfloatphyaddrxalancbmk;
          //println("select phyaddr:" + selectphyaddr);
          int selecti = -1;
          float diff = maxfloatphyaddrxalancbmk;
          for(int i = 0; i < countxalancbmk; i++)
          {
            if(abs(selectphyaddr - floatphyaddrxalancbmk.get(i)) < diff)
            {
              selecti = i;
              diff = abs(selectphyaddr - floatphyaddrxalancbmk.get(i));
            }
          }
          //println("select phyaddr diff:" + diff);
          //println("select phyaddr i:" + selecti);
          int selectsorti = -1;   
          diff = maxfloatphyaddrxalancbmk;
          for(int i = 0; i < countxalancbmk; i++)
          {
            if(abs(floatphyaddrxalancbmk.get(selecti) - sortphyaddrxalancbmk[i]) < diff)
            {
              selectsorti = i;
              diff = abs(floatphyaddrxalancbmk.get(selecti) - sortphyaddrxalancbmk[i]);
            }
          }
          //println("select phyaddr sort diff:" + diff);
          //println("select phyaddr sort i:" + selectsorti);
          int j = 11;
          for(int i = 0; i < 6; i++)
          {
            if(selectsorti - i >= 0 && selectsorti + i <= countxalancbmk - 1)
            {
              j = i * 2 + 1;
            }
          }
          int[] selectdraw = new int[j];
          for(int k = 0; k < j; k++)
          {
            int drawi = -1;
            diff = maxfloatphyaddrxalancbmk;
            for(int i = 0; i < countxalancbmk; i++)
            {
              if(abs(sortphyaddrxalancbmk[selectsorti - j / 2 + k] - floatphyaddrxalancbmk.get(i)) < diff)
              {
                drawi = i;
                diff = abs(sortphyaddrxalancbmk[selectsorti - j / 2 + k] - floatphyaddrxalancbmk.get(i));
              }
            }
            selectdraw[k] = drawi;
            //println("draw phy diff:" + diff);
            //println("draw phy i:" + selectdraw[k]);
          }
          for(int i = 0; i < j; i++)
          {
            if(readxalancbmk.get(selectdraw[i]) > 0) 
            {
              stroke(30, 144, 255, int(float(255) / log(maxreadxalancbmk) * log(readxalancbmk.get(selectdraw[i]))));
            } 
            else if(writexalancbmk.get(selectdraw[i]) > 0) 
            {
              stroke(50, 205, 50, int(float(255) / log(maxwritexalancbmk) * log(writexalancbmk.get(selectdraw[i]))));
            } 
            else 
            {
              stroke(255, 20, 147, int(float(255) / log(maxexecxalancbmk) * log(execxalancbmk.get(selectdraw[i]))));
            }           
            if(j == 0)
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              stroke(0);
              line(width * 0.1 + width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / 2.0, height * 0.4);
              fill(0);  
              textSize(width * 0.01);
              text(vtladdrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(selectdraw[i]), height * 0.19);
              text(phyaddrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / 2.0, height * 0.43);
            }
            else
            {
              line(width * 0.3 + width * 0.4 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(selectdraw[i]), height * 0.2, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);    
              if(i == j / 2)
              {  
                stroke(0);
                line(width * 0.1 + width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(selectdraw[i]), height * 0.8, width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.4);
                fill(0);  
                textSize(width * 0.01);
                text(vtladdrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(selectdraw[i]), height * 0.19);
                text(phyaddrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43); 
              }
              if(i == 0 || i == j - 1)
              {
                fill(0);  
                textSize(width * 0.01);
                text(phyaddrxalancbmk.get(selectdraw[i]), width * 0.3 + width * 0.4 / float(j - 1) * i, height * 0.43);
              }
            }                        
          } 
        }
      }  
    }
    else
    {
      stroke(0);
      line(width * 0.1, height * 0.1, width * 0.9, height * 0.1);
      line(width * 0.1, height * 0.3, width * 0.9, height * 0.3);
      line(width * 0.1, height * 0.4, width * 0.9, height * 0.4);
      line(width * 0.1, height * 0.6, width * 0.9, height * 0.6);
      line(width * 0.1, height * 0.7, width * 0.9, height * 0.7);
      line(width * 0.1, height * 0.9, width * 0.9, height * 0.9);
      for(int i = 0; i < 11; i++)
      {
        stroke(0);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.1, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.09);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.3, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.31);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.4, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.39);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.6, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.61);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.7, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.69);
        line(width * 0.1 + width * 0.8 / 10.0 * i, height * 0.9, width * 0.1 + width * 0.8 / 10.0 * i, height * 0.91);
      }
      fill(0);    
      textSize(width * 0.01);
      text("Vtl", width * 0.05, height * 0.09);
      text(0, width * 0.08, height * 0.09);
      text(maxvtladdrxalancbmk, width * 0.92, height * 0.09);
      text("Phy", width * 0.05, height * 0.32);
      text(0, width * 0.08, height * 0.32);
      text(maxphyaddrxalancbmk, width * 0.92, height * 0.32);
      text("Vtl", width * 0.05, height * 0.39);
      text(0, width * 0.08, height * 0.39);
      text(maxvtladdrxalancbmk, width * 0.92, height * 0.39);
      text("Phy", width * 0.05, height * 0.62);
      text(0, width * 0.08, height * 0.62);
      text(maxphyaddrxalancbmk, width * 0.92, height * 0.62);
      text("Vtl", width * 0.05, height * 0.69);
      text(0, width * 0.08, height * 0.69);
      text(maxvtladdrxalancbmk, width * 0.92, height * 0.69);
      text("Phy", width * 0.05, height * 0.92);
      text(0, width * 0.08, height * 0.92);
      text(maxphyaddrxalancbmk, width * 0.92, height * 0.92);
      for(int i = 0; i < countxalancbmk; i++) 
      {         
        if(readxalancbmk.get(i) > 0) 
        {
          stroke(30, 144, 255, int(float(255) / log(maxreadxalancbmk) * log(readxalancbmk.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(i), height * 0.1, width * 0.1 + width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(i), height * 0.3);        
        } 
        if(writexalancbmk.get(i) > 0) 
        {
          stroke(50, 205, 50, int(float(255) / log(maxwritexalancbmk) * log(writexalancbmk.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(i), height * 0.4, width * 0.1 + width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(i), height * 0.6);        
        } 
        if(execxalancbmk.get(i) > 0) 
        {
          stroke(255, 20, 147, int(float(255) / log(maxexecxalancbmk) * log(execxalancbmk.get(i))));
          line(width * 0.1 + width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(i), height * 0.7, width * 0.1 + width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(i), height * 0.9);        
        }    
      }          
    }
  }  
}

void update(float x, float y) 
{
  if(x > width * 0.1 && x < width * 0.9 && y > height * 0.6 && y < height * 0.8 && showmenu == false) 
  {
    figureover = true;
  }
  else
  {
    figureover = false;
  }
}

void mousePressed()
{
  if(showmenu == true)
  {
    if(mouseX < width / 3 && mouseY < height / 3)
    {
      showastar = true;
      showmenu = false;
    }
    if(mouseX > width / 3 && mouseX < width / 3 * 2 && mouseY < height / 3)
    {
      showbzip = true;
      showmenu = false;
    }
    if(mouseX > width / 3 * 2 && mouseX < width * 0.9 && mouseY < height / 3)
    {
      showgcc = true;
      showmenu = false;
    }
    if(mouseX < width / 3 && mouseY > height / 3 && mouseY < height / 3 * 2)
    {
      showh264 = true;
      showmenu = false;
    }
    if(mouseX > width / 3 && mouseX < width / 3 * 2 && mouseY > height / 3 && mouseY < height / 3 * 2)
    {
      showhmmer = true;
      showmenu = false;
    }
    if(mouseX > width / 3  * 2 && mouseX < width * 0.9 && mouseY > height / 3 && mouseY < height / 3 * 2)
    {
      showlibquantum = true;
      showmenu = false;
    }
    if(mouseX < width / 3 && mouseY > height / 3 * 2)
    {
      showmcf = true;
      showmenu = false;
    }
    if(mouseX > width / 3 && mouseX < width / 3 * 2 && mouseY > height / 3 * 2)
    {
      showsjeng = true;
      showmenu = false;
    }
    if(mouseX > width / 3 * 2 && mouseX < width * 0.9 && mouseY > height / 3 * 2)
    {
      showxalancbmk = true;
      showmenu = false;
    }
    if(mouseX > width * 0.92 && mouseX < width * 0.99 && mouseY > height * 0.2 && mouseY < height * 0.23)
    {
      showaccess = true;
      showread = false;
      showwrite = false;
      showexec = false;
      showstatistic = false;
    }
    if(mouseX > width * 0.92 && mouseX < width * 0.99 && mouseY > height * 0.3 && mouseY < height * 0.33)
    {
      showaccess = false;
      showread = true;
      showwrite = false;
      showexec = false;
      showstatistic = false;
    }
    if(mouseX > width * 0.92 && mouseX < width * 0.99 && mouseY > height * 0.4 && mouseY < height * 0.43)
    {
      showaccess = false;
      showread = false;
      showwrite = true;
      showexec = false;
      showstatistic = false;
    }
    if(mouseX > width * 0.92 && mouseX < width * 0.99 && mouseY > height * 0.5 && mouseY < height * 0.53)
    {
      showaccess = false;
      showread = false;
      showwrite = false;
      showexec = true;
      showstatistic = false;
    }
    if(mouseX > width * 0.92 && mouseX < width * 0.99 && mouseY > height * 0.6 && mouseY < height * 0.63)
    {
      showaccess = false;
      showread = false;
      showwrite = false;
      showexec = false;
      showstatistic = true;
    }
  }
  else
  {
    if(mouseX > width * 0.4 && mouseX < width * 0.48 && mouseY > height * 0.02 && mouseY < height * 0.07)
    {
      if(showastar == true)
      {
        showdetailastar = false;
      }
      if(showbzip == true)
      {
        showdetailbzip = false;
      }
      if(showgcc == true)
      {
        showdetailgcc = false;
      }
      if(showh264 == true)
      {
        showdetailh264 = false;
      }
      if(showhmmer == true)
      {
        showdetailhmmer = false;
      }
      if(showlibquantum == true)
      {
        showdetaillibquantum = false;
      }
      if(showmcf == true)
      {
        showdetailmcf = false;
      }
      if(showsjeng == true)
      {
        showdetailsjeng = false;
      }
      if(showxalancbmk == true)
      {
        showdetailxalancbmk = false;
      }   
    }
    if(mouseX > width * 0.5 && mouseX < width * 0.58 && mouseY > height * 0.02 && mouseY < height * 0.07)
    {
      if(showastar == true)
      {
        showdetailastar = true;
      }
      if(showbzip == true)
      {
        showdetailbzip = true;
      }
      if(showgcc == true)
      {
        showdetailgcc = true;
      }
      if(showh264 == true)
      {
        showdetailh264 = true;
      }
      if(showhmmer == true)
      {
        showdetailhmmer = true;
      }
      if(showlibquantum == true)
      {
        showdetaillibquantum = true;
      }
      if(showmcf == true)
      {
        showdetailmcf = true;
      }
      if(showsjeng == true)
      {
        showdetailsjeng = true;
      }
      if(showxalancbmk == true)
      {
        showdetailxalancbmk = true;
      }  
    }
    if(mouseX > width * 0.6 && mouseX < width * 0.68 && mouseY > height * 0.02 && mouseY < height * 0.07)
    {
      showmenu = true;
      showaccess = true;
      showread = false;
      showwrite = false;
      showexec = false;
      showstatistic = false;
      if(showastar == true)
      {      
        showastar = false;
        showdetailastar = false;
      }
      if(showbzip == true)
      {
        showbzip = false;
        showdetailbzip = false;
      }
      if(showgcc == true)
      {
        showgcc = false;
        showdetailgcc = false;
      }
      if(showh264 == true)
      {
        showh264 = false;
        showdetailh264 = false;
      }
      if(showhmmer == true)
      {
        showhmmer = false;
        showdetailhmmer = false;
      }
      if(showlibquantum == true)
      {
        showlibquantum = false;
        showdetaillibquantum = false;
      }
      if(showmcf == true)
      {
        showmcf = false;
        showdetailmcf = false;
      }
      if(showsjeng == true)
      {
        showsjeng = false;
        showdetailsjeng = false;
      }
      if(showxalancbmk == true)
      {
        showxalancbmk = false;
        showdetailxalancbmk = false;
      }
    }
  }  
}

void showAccess()
{
  pg[0].beginDraw();
      pg[0].background(255);
      pg[0].stroke(0);
      pg[0].line(pg[0].width * 0.1, pg[0].height * 0.4, pg[0].width * 0.9, pg[0].height * 0.4);
      pg[0].line(pg[0].width * 0.1, pg[0].height * 0.8, pg[0].width * 0.9, pg[0].height * 0.8);
      for(int i = 0; i < countastar; i++) 
      {    
        if(readastar.get(i) > 0) 
        {
          pg[0].stroke(30, 144, 255, int(float(255) / log(maxreadastar) * log(readastar.get(i))));
        } 
        else if(writeastar.get(i) > 0) 
        {
          pg[0].stroke(50, 205, 50, int(float(255) / log(maxwriteastar) * log(writeastar.get(i))));
        } 
        else
        {
          pg[0].stroke(255, 20, 147, int(float(255) / log(maxexecastar) * log(execastar.get(i))));
        }    
        pg[0].line(pg[0].width * 0.1 + pg[0].width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(i), pg[0].height * 0.4, pg[0].width * 0.1 + pg[0].width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(i), pg[0].height * 0.8);    
      }    
      pg[0].fill(0); 
      pg[0].textSize(pg[0].width * 0.05);
      pg[0].text("astar", pg[0].width * 0.4, pg[0].height * 0.2);
      pg[0].textSize(pg[0].width * 0.01);
      pg[0].text(0, pg[0].width * 0.08, pg[0].height * 0.4);
      pg[0].text(maxvtladdrbzip, pg[0].width * 0.92, pg[0].height * 0.4);
      pg[0].text(0, pg[0].width * 0.08, pg[0].height * 0.8);
      pg[0].text(maxphyaddrbzip, pg[0].width * 0.92, pg[0].height * 0.8);
      pg[0].endDraw();
    
      pg[1].beginDraw();
      pg[1].background(255);
      pg[1].stroke(0);
      pg[1].line(pg[1].width * 0.1, pg[1].height * 0.4, pg[1].width * 0.9, pg[1].height * 0.4);
      pg[1].line(pg[1].width * 0.1, pg[1].height * 0.8, pg[1].width * 0.9, pg[1].height * 0.8);
      for(int i = 0; i < countbzip; i++) 
      {    
        if(readbzip.get(i) > 0) 
        {
          pg[1].stroke(30, 144, 255, int(float(255) / log(maxreadbzip) * log(readbzip.get(i))));
        } 
        else if (writebzip.get(i) > 0) 
        {
          pg[1].stroke(50, 205, 50, int(float(255) / log(maxwritebzip) * log(writebzip.get(i))));
        } 
        else 
        {
          pg[1].stroke(255, 20, 147, int(float(255) / log(maxexecbzip) * log(execbzip.get(i))));
        }    
        pg[1].line(pg[1].width * 0.1 + pg[1].width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(i), pg[1].height * 0.4, pg[1].width * 0.1 + pg[1].width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(i), pg[1].height * 0.8);
      }   
      
      pg[1].fill(0);    
      pg[1].textSize(pg[1].width * 0.05);
      pg[1].text("bzip", pg[1].width * 0.4, pg[1].height * 0.2);
      pg[1].textSize(pg[1].width * 0.01);
      pg[1].text(0, pg[1].width * 0.08, pg[1].height * 0.4);
      pg[1].text(maxvtladdrbzip, pg[1].width * 0.92, pg[1].height * 0.4);
      pg[1].text(0, pg[1].width * 0.08, pg[1].height * 0.8);
      pg[1].text(maxphyaddrbzip, pg[1].width * 0.92, pg[1].height * 0.8); 
      pg[1].endDraw();
    
      pg[2].beginDraw();
      pg[2].background(255);
      pg[2].stroke(0);
      pg[2].line(pg[2].width * 0.1, pg[2].height * 0.4, pg[2].width * 0.9, pg[2].height * 0.4);
      pg[2].line(pg[2].width * 0.1, pg[2].height * 0.8, pg[2].width * 0.9, pg[2].height * 0.8);
      for(int i = 0; i < countgcc; i++) 
      {    
        if(readgcc.get(i) > 0) 
        {
          pg[2].stroke(30, 144, 255, int(float(255) / log(maxreadgcc) * log(readgcc.get(i))));
        } 
        else if (writegcc.get(i) > 0) 
        {
          pg[2].stroke(50, 205, 50, int(float(255) / log(maxwritegcc) * log(writegcc.get(i))));
        } 
        else 
        {
          pg[2].stroke(255, 20, 147, int(float(255) / log(maxexecgcc) * log(execgcc.get(i))));
        }      
        pg[2].line(pg[2].width * 0.1 + pg[2].width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(i), pg[2].height * 0.4, pg[2].width * 0.1 + pg[2].width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(i), pg[2].height * 0.8);
      }    
      pg[2].fill(0);    
      pg[2].textSize(pg[2].width * 0.05);
      pg[2].text("gcc", pg[2].width * 0.4, pg[2].height * 0.2);
      pg[2].textSize(pg[2].width * 0.01);
      pg[2].text(0, pg[2].width * 0.08, pg[2].height * 0.4);
      pg[2].text(maxvtladdrgcc, pg[2].width * 0.92, pg[2].height * 0.4);
      pg[2].text(0, pg[2].width * 0.08, pg[2].height * 0.8);
      pg[2].text(maxphyaddrgcc, pg[2].width * 0.92, pg[2].height * 0.8);  
      pg[2].endDraw();
    
      pg[3].beginDraw();
      pg[3].background(255);
      pg[3].stroke(0);
      pg[3].line(pg[3].width * 0.1, pg[3].height * 0.4, pg[3].width * 0.9, pg[3].height * 0.4);
      pg[3].line(pg[3].width * 0.1, pg[3].height * 0.8, pg[3].width * 0.9, pg[3].height * 0.8);
      for(int i = 0; i < counth264; i++) 
      {    
        if(readh264.get(i) > 0) 
        {
          pg[3].stroke(30, 144, 255, int(float(255) / log(maxreadh264) * log(readh264.get(i))));
        } 
        else if (writeh264.get(i) > 0) 
        {
          pg[3].stroke(50, 205, 50, int(float(255) / log(maxwriteh264) * log(writeh264.get(i))));
        } 
        else 
        {
          pg[3].stroke(255, 20, 147, int(float(255) / log(maxexech264) * log(exech264.get(i))));
        }    
        pg[3].line(pg[3].width * 0.1 + pg[3].width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(i), pg[3].height * 0.4, pg[3].width * 0.1 + pg[3].width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(i), pg[3].height * 0.8);
      }    
      pg[3].fill(0);   
      pg[3].textSize(pg[3].width * 0.05);
      pg[3].text("h264", pg[3].width * 0.4, pg[3].height * 0.2);
      pg[3].textSize(pg[3].width * 0.01);
      pg[3].text(0, pg[3].width * 0.08, pg[3].height * 0.4);
      pg[3].text(maxvtladdrh264, pg[3].width * 0.92, pg[3].height * 0.4);
      pg[3].text(0, pg[3].width * 0.08, pg[3].height * 0.8);
      pg[3].text(maxphyaddrh264, pg[3].width * 0.92, pg[3].height * 0.8);  
      pg[3].endDraw();
    
      pg[4].beginDraw();
      pg[4].background(255);
      pg[4].stroke(0);
      pg[4].line(pg[4].width * 0.1, pg[4].height * 0.4, pg[4].width * 0.9, pg[4].height * 0.4);
      pg[4].line(pg[4].width * 0.1, pg[4].height * 0.8, pg[4].width * 0.9, pg[4].height * 0.8);
      for(int i = 0; i < counthmmer; i++) 
      {    
        if(readhmmer.get(i) > 0) 
        {
          pg[4].stroke(30, 144, 255, int(float(255) / log(maxreadhmmer) * log(readhmmer.get(i))));
        } 
        else if (writehmmer.get(i) > 0) 
        {
          pg[4].stroke(50, 205, 50, int(float(255) / log(maxwritehmmer) * log(writehmmer.get(i))));
        } 
        else 
        {
          pg[4].stroke(255, 20, 147, int(float(255) / log(maxexechmmer) * log(exechmmer.get(i))));
        }    
        pg[4].line(pg[4].width * 0.1 + pg[4].width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(i), pg[4].height * 0.4, pg[4].width * 0.1 + pg[4].width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(i), pg[4].height * 0.8);
      }  
      pg[4].fill(0);   
      pg[4].textSize(pg[4].width * 0.05);
      pg[4].text("hmmer", pg[4].width * 0.4, pg[4].height * 0.2);
      pg[4].textSize(pg[4].width * 0.01);
      pg[4].text(0, pg[4].width * 0.08, pg[4].height * 0.4);
      pg[4].text(maxvtladdrhmmer, pg[4].width * 0.92, pg[4].height * 0.4);
      pg[4].text(0, pg[4].width * 0.08, pg[4].height * 0.8);
      pg[4].text(maxphyaddrhmmer, pg[4].width * 0.92, pg[4].height * 0.8);  
      pg[4].endDraw();
    
      pg[5].beginDraw();
      pg[5].background(255);
      pg[5].stroke(0);
      pg[5].line(pg[5].width * 0.1, pg[5].height * 0.4, pg[5].width * 0.9, pg[5].height * 0.4);
      pg[5].line(pg[5].width * 0.1, pg[5].height * 0.8, pg[5].width * 0.9, pg[5].height * 0.8);
      for(int i = 0; i < countlibquantum; i++) 
      {    
        if(readlibquantum.get(i) > 0) 
        {
          pg[5].stroke(30, 144, 255, int(float(255) / log(maxreadlibquantum) * log(readlibquantum.get(i))));
        } 
        else if (writelibquantum.get(i) > 0) 
        {
          pg[5].stroke(50, 205, 50, int(float(255) / log(maxwritelibquantum) * log(writelibquantum.get(i))));
        } 
        else 
        {
          pg[5].stroke(255, 20, 147, int(float(255) / log(maxexeclibquantum) * log(execlibquantum.get(i))));
        }    
        pg[5].line(pg[5].width * 0.1 + pg[5].width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(i), pg[5].height * 0.4, pg[5].width * 0.1 + pg[5].width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(i), pg[5].height * 0.8);
      }  
      pg[5].fill(0);   
      pg[5].textSize(pg[5].width * 0.05);
      pg[5].text("libquantum", pg[5].width * 0.4, pg[5].height * 0.2);
      pg[5].textSize(pg[5].width * 0.01);
      pg[5].text(0, pg[5].width * 0.08, pg[5].height * 0.4);
      pg[5].text(maxvtladdrlibquantum, pg[5].width * 0.92, pg[5].height * 0.4);
      pg[5].text(0, pg[5].width * 0.08, pg[5].height * 0.8);
      pg[5].text(maxphyaddrlibquantum, pg[5].width * 0.92, pg[5].height * 0.8);  
      pg[5].endDraw();
    
      pg[6].beginDraw();
      pg[6].background(255);
      pg[6].stroke(0);
      pg[6].line(pg[6].width * 0.1, pg[6].height * 0.4, pg[6].width * 0.9, pg[6].height * 0.4);
      pg[6].line(pg[6].width * 0.1, pg[6].height * 0.8, pg[6].width * 0.9, pg[6].height * 0.8);
      for(int i = 0; i < countmcf; i++) 
      {    
        if(readmcf.get(i) > 0) 
        {
          pg[6].stroke(30, 144, 255, int(float(255) / log(maxreadmcf) * log(readmcf.get(i))));
        } 
        else if (writemcf.get(i) > 0) 
        {
          pg[6].stroke(50, 205, 50, int(float(255) / log(maxwritemcf) * log(writemcf.get(i))));
        } 
        else 
        {
          pg[6].stroke(255, 20, 147, int(float(255) / log(maxexecmcf) * log(execmcf.get(i))));
        }    
        pg[6].line(pg[6].width * 0.1 + pg[6].width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(i), pg[6].height * 0.4, pg[6].width * 0.1 + pg[6].width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(i), pg[6].height * 0.8);
      }  
      pg[6].fill(0);   
      pg[6].textSize(pg[6].width * 0.05);
      pg[6].text("mcf", pg[6].width * 0.4, pg[6].height * 0.2);
      pg[6].textSize(pg[6].width * 0.01);
      pg[6].text(0, pg[6].width * 0.08, pg[6].height * 0.4);
      pg[6].text(maxvtladdrmcf, pg[6].width * 0.92, pg[6].height * 0.4);
      pg[6].text(0, pg[6].width * 0.08, pg[6].height * 0.8);
      pg[6].text(maxphyaddrmcf, pg[6].width * 0.92, pg[6].height * 0.8);  
      pg[6].endDraw();
    
      pg[7].beginDraw();
      pg[7].background(255);
      pg[7].stroke(0);
      pg[7].line(pg[7].width * 0.1, pg[7].height * 0.4, pg[7].width * 0.9, pg[7].height * 0.4);
      pg[7].line(pg[7].width * 0.1, pg[7].height * 0.8, pg[7].width * 0.9, pg[7].height * 0.8);
      for(int i = 0; i < countsjeng; i++) 
      {    
        if(readsjeng.get(i) > 0) 
        {
          pg[7].stroke(30, 144, 255, int(float(255) / log(maxreadsjeng) * log(readsjeng.get(i))));
        } 
        else if (writesjeng.get(i) > 0) 
        {
          pg[7].stroke(50, 205, 50, int(float(255) / log(maxwritesjeng) * log(writesjeng.get(i))));
        } 
        else 
        {
          pg[7].stroke(255, 20, 147, int(float(255) / log(maxexecsjeng) * log(execsjeng.get(i))));
        }    
        pg[7].line(pg[7].width * 0.1 + pg[7].width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(i), pg[7].height * 0.4, pg[7].width * 0.1 + pg[7].width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(i), pg[7].height * 0.8);
      }  
      pg[7].fill(0);   
      pg[7].textSize(pg[7].width * 0.05);
      pg[7].text("sjeng", pg[7].width * 0.4, pg[7].height * 0.2);
      pg[7].textSize(pg[7].width * 0.01);
      pg[7].text(0, pg[7].width * 0.08, pg[7].height * 0.4);
      pg[7].text(maxvtladdrsjeng, pg[7].width * 0.92, pg[7].height * 0.4);
      pg[7].text(0, pg[7].width * 0.08, pg[7].height * 0.8);
      pg[7].text(maxphyaddrsjeng, pg[7].width * 0.92, pg[7].height * 0.8);  
      pg[7].endDraw();
    
      pg[8].beginDraw();
      pg[8].background(255);
      pg[8].stroke(0);
      pg[8].line(pg[8].width * 0.1, pg[8].height * 0.4, pg[8].width * 0.9, pg[8].height * 0.4);
      pg[8].line(pg[8].width * 0.1, pg[8].height * 0.8, pg[8].width * 0.9, pg[8].height * 0.8);
      for(int i = 0; i < countxalancbmk; i++) 
      {    
        if(readxalancbmk.get(i) > 0) 
        {
          pg[8].stroke(30, 144, 255, int(float(255) / log(maxreadxalancbmk) * log(readxalancbmk.get(i))));
        } 
        else if (writexalancbmk.get(i) > 0) 
        {
          pg[8].stroke(50, 205, 50, int(float(255) / log(maxwritexalancbmk) * log(writexalancbmk.get(i))));
        } 
        else 
        {
          pg[8].stroke(255, 20, 147, int(float(255) / log(maxexecxalancbmk) * log(execxalancbmk.get(i))));
        }    
        pg[8].line(pg[8].width * 0.1 + pg[8].width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(i), pg[8].height * 0.4, pg[8].width * 0.1 + pg[8].width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(i), pg[8].height * 0.8);
      }  
      pg[8].fill(0);   
      pg[8].textSize(pg[8].width * 0.05);
      pg[8].text("xalancbmk", pg[8].width * 0.4, pg[8].height * 0.2);
      pg[8].textSize(pg[8].width * 0.01);
      pg[8].text(0, pg[8].width * 0.08, pg[8].height * 0.4);
      pg[8].text(maxvtladdrxalancbmk, pg[8].width * 0.92, pg[8].height * 0.4);
      pg[8].text(0, pg[8].width * 0.08, pg[8].height * 0.8);
      pg[8].text(maxphyaddrxalancbmk, pg[8].width * 0.92, pg[8].height * 0.8);  
      pg[8].endDraw();
    
      for(int i=0; i<pg.length; i++)
      {
        image(pg[i], (i % 3) * width / 3.0 , (i / 3) * height / 3.0);
      }
}

void showRead()
{
  pg[0].beginDraw();
      pg[0].background(255);
      pg[0].stroke(0);
      pg[0].line(pg[0].width * 0.1, pg[0].height * 0.4, pg[0].width * 0.9, pg[0].height * 0.4);
      pg[0].line(pg[0].width * 0.1, pg[0].height * 0.8, pg[0].width * 0.9, pg[0].height * 0.8);
      for(int i = 0; i < countastar; i++) 
      {    
        if(readastar.get(i) > 0) 
        {
          pg[0].stroke(30, 144, 255, int(float(255) / log(maxreadastar) * log(readastar.get(i))));
          pg[0].line(pg[0].width * 0.1 + pg[0].width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(i), pg[0].height * 0.4, pg[0].width * 0.1 + pg[0].width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(i), pg[0].height * 0.8);    
        }
      }       
      pg[0].fill(0); 
      pg[0].textSize(pg[0].width * 0.05);
      pg[0].text("astar", pg[0].width * 0.4, pg[0].height * 0.2);
      pg[0].textSize(pg[0].width * 0.01);
      pg[0].text(0, pg[0].width * 0.08, pg[0].height * 0.4);
      pg[0].text(maxvtladdrbzip, pg[0].width * 0.92, pg[0].height * 0.4);
      pg[0].text(0, pg[0].width * 0.08, pg[0].height * 0.8);
      pg[0].text(maxphyaddrbzip, pg[0].width * 0.92, pg[0].height * 0.8);
      pg[0].endDraw();
    
      pg[1].beginDraw();
      pg[1].background(255);
      pg[1].stroke(0);
      pg[1].line(pg[1].width * 0.1, pg[1].height * 0.4, pg[1].width * 0.9, pg[1].height * 0.4);
      pg[1].line(pg[1].width * 0.1, pg[1].height * 0.8, pg[1].width * 0.9, pg[1].height * 0.8);
      for(int i = 0; i < countbzip; i++) 
      {    
        if(readbzip.get(i) > 0) 
        {
          pg[1].stroke(30, 144, 255, int(float(255) / log(maxreadbzip) * log(readbzip.get(i))));
          pg[1].line(pg[1].width * 0.1 + pg[1].width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(i), pg[1].height * 0.4, pg[1].width * 0.1 + pg[1].width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(i), pg[1].height * 0.8);
        }  
      }      
      pg[1].fill(0);    
      pg[1].textSize(pg[1].width * 0.05);
      pg[1].text("bzip", pg[1].width * 0.4, pg[1].height * 0.2);
      pg[1].textSize(pg[1].width * 0.01);
      pg[1].text(0, pg[1].width * 0.08, pg[1].height * 0.4);
      pg[1].text(maxvtladdrbzip, pg[1].width * 0.92, pg[1].height * 0.4);
      pg[1].text(0, pg[1].width * 0.08, pg[1].height * 0.8);
      pg[1].text(maxphyaddrbzip, pg[1].width * 0.92, pg[1].height * 0.8); 
      pg[1].endDraw();
    
      pg[2].beginDraw();
      pg[2].background(255);
      pg[2].stroke(0);
      pg[2].line(pg[2].width * 0.1, pg[2].height * 0.4, pg[2].width * 0.9, pg[2].height * 0.4);
      pg[2].line(pg[2].width * 0.1, pg[2].height * 0.8, pg[2].width * 0.9, pg[2].height * 0.8);
      for(int i = 0; i < countgcc; i++) 
      {    
        if(readgcc.get(i) > 0) 
        {
          pg[2].stroke(30, 144, 255, int(float(255) / log(maxreadgcc) * log(readgcc.get(i))));
          pg[2].line(pg[2].width * 0.1 + pg[2].width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(i), pg[2].height * 0.4, pg[2].width * 0.1 + pg[2].width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(i), pg[2].height * 0.8);
        }
      }             
      pg[2].fill(0);    
      pg[2].textSize(pg[2].width * 0.05);
      pg[2].text("gcc", pg[2].width * 0.4, pg[2].height * 0.2);
      pg[2].textSize(pg[2].width * 0.01);
      pg[2].text(0, pg[2].width * 0.08, pg[2].height * 0.4);
      pg[2].text(maxvtladdrgcc, pg[2].width * 0.92, pg[2].height * 0.4);
      pg[2].text(0, pg[2].width * 0.08, pg[2].height * 0.8);
      pg[2].text(maxphyaddrgcc, pg[2].width * 0.92, pg[2].height * 0.8);  
      pg[2].endDraw();
    
      pg[3].beginDraw();
      pg[3].background(255);
      pg[3].stroke(0);
      pg[3].line(pg[3].width * 0.1, pg[3].height * 0.4, pg[3].width * 0.9, pg[3].height * 0.4);
      pg[3].line(pg[3].width * 0.1, pg[3].height * 0.8, pg[3].width * 0.9, pg[3].height * 0.8);
      for(int i = 0; i < counth264; i++) 
      {    
        if(readh264.get(i) > 0) 
        {
          pg[3].stroke(30, 144, 255, int(float(255) / log(maxreadh264) * log(readh264.get(i))));
          pg[3].line(pg[3].width * 0.1 + pg[3].width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(i), pg[3].height * 0.4, pg[3].width * 0.1 + pg[3].width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(i), pg[3].height * 0.8);
        }
      } 
            
      pg[3].fill(0);   
      pg[3].textSize(pg[3].width * 0.05);
      pg[3].text("h264", pg[3].width * 0.4, pg[3].height * 0.2);
      pg[3].textSize(pg[3].width * 0.01);
      pg[3].text(0, pg[3].width * 0.08, pg[3].height * 0.4);
      pg[3].text(maxvtladdrh264, pg[3].width * 0.92, pg[3].height * 0.4);
      pg[3].text(0, pg[3].width * 0.08, pg[3].height * 0.8);
      pg[3].text(maxphyaddrh264, pg[3].width * 0.92, pg[3].height * 0.8);  
      pg[3].endDraw();
    
      pg[4].beginDraw();
      pg[4].background(255);
      pg[4].stroke(0);
      pg[4].line(pg[4].width * 0.1, pg[4].height * 0.4, pg[4].width * 0.9, pg[4].height * 0.4);
      pg[4].line(pg[4].width * 0.1, pg[4].height * 0.8, pg[4].width * 0.9, pg[4].height * 0.8);
      for(int i = 0; i < counthmmer; i++) 
      {    
        if(readhmmer.get(i) > 0) 
        {
          pg[4].stroke(30, 144, 255, int(float(255) / log(maxreadhmmer) * log(readhmmer.get(i))));
          pg[4].line(pg[4].width * 0.1 + pg[4].width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(i), pg[4].height * 0.4, pg[4].width * 0.1 + pg[4].width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(i), pg[4].height * 0.8);
        }
      } 
          
      pg[4].fill(0);   
      pg[4].textSize(pg[4].width * 0.05);
      pg[4].text("hmmer", pg[4].width * 0.4, pg[4].height * 0.2);
      pg[4].textSize(pg[4].width * 0.01);
      pg[4].text(0, pg[4].width * 0.08, pg[4].height * 0.4);
      pg[4].text(maxvtladdrhmmer, pg[4].width * 0.92, pg[4].height * 0.4);
      pg[4].text(0, pg[4].width * 0.08, pg[4].height * 0.8);
      pg[4].text(maxphyaddrhmmer, pg[4].width * 0.92, pg[4].height * 0.8);  
      pg[4].endDraw();
    
      pg[5].beginDraw();
      pg[5].background(255);
      pg[5].stroke(0);
      pg[5].line(pg[5].width * 0.1, pg[5].height * 0.4, pg[5].width * 0.9, pg[5].height * 0.4);
      pg[5].line(pg[5].width * 0.1, pg[5].height * 0.8, pg[5].width * 0.9, pg[5].height * 0.8);
      for(int i = 0; i < countlibquantum; i++) 
      {    
        if(readlibquantum.get(i) > 0) 
        {
          pg[5].stroke(30, 144, 255, int(float(255) / log(maxreadlibquantum) * log(readlibquantum.get(i))));
          pg[5].line(pg[5].width * 0.1 + pg[5].width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(i), pg[5].height * 0.4, pg[5].width * 0.1 + pg[5].width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(i), pg[5].height * 0.8);
        }
      } 
          
      pg[5].fill(0);   
      pg[5].textSize(pg[5].width * 0.05);
      pg[5].text("libquantum", pg[5].width * 0.4, pg[5].height * 0.2);
      pg[5].textSize(pg[5].width * 0.01);
      pg[5].text(0, pg[5].width * 0.08, pg[5].height * 0.4);
      pg[5].text(maxvtladdrlibquantum, pg[5].width * 0.92, pg[5].height * 0.4);
      pg[5].text(0, pg[5].width * 0.08, pg[5].height * 0.8);
      pg[5].text(maxphyaddrlibquantum, pg[5].width * 0.92, pg[5].height * 0.8);  
      pg[5].endDraw();
    
      pg[6].beginDraw();
      pg[6].background(255);
      pg[6].stroke(0);
      pg[6].line(pg[6].width * 0.1, pg[6].height * 0.4, pg[6].width * 0.9, pg[6].height * 0.4);
      pg[6].line(pg[6].width * 0.1, pg[6].height * 0.8, pg[6].width * 0.9, pg[6].height * 0.8);
      for(int i = 0; i < countmcf; i++) 
      {    
        if(readmcf.get(i) > 0) 
        {
          pg[6].stroke(30, 144, 255, int(float(255) / log(maxreadmcf) * log(readmcf.get(i))));
          pg[6].line(pg[6].width * 0.1 + pg[6].width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(i), pg[6].height * 0.4, pg[6].width * 0.1 + pg[6].width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(i), pg[6].height * 0.8);
        }
      }           
      pg[6].fill(0);   
      pg[6].textSize(pg[6].width * 0.05);
      pg[6].text("mcf", pg[6].width * 0.4, pg[6].height * 0.2);
      pg[6].textSize(pg[6].width * 0.01);
      pg[6].text(0, pg[6].width * 0.08, pg[6].height * 0.4);
      pg[6].text(maxvtladdrmcf, pg[6].width * 0.92, pg[6].height * 0.4);
      pg[6].text(0, pg[6].width * 0.08, pg[6].height * 0.8);
      pg[6].text(maxphyaddrmcf, pg[6].width * 0.92, pg[6].height * 0.8);  
      pg[6].endDraw();
    
      pg[7].beginDraw();
      pg[7].background(255);
      pg[7].stroke(0);
      pg[7].line(pg[7].width * 0.1, pg[7].height * 0.4, pg[7].width * 0.9, pg[7].height * 0.4);
      pg[7].line(pg[7].width * 0.1, pg[7].height * 0.8, pg[7].width * 0.9, pg[7].height * 0.8);
      for(int i = 0; i < countsjeng; i++) 
      {    
        if(readsjeng.get(i) > 0) 
        {
          pg[7].stroke(30, 144, 255, int(float(255) / log(maxreadsjeng) * log(readsjeng.get(i))));
          pg[7].line(pg[7].width * 0.1 + pg[7].width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(i), pg[7].height * 0.4, pg[7].width * 0.1 + pg[7].width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(i), pg[7].height * 0.8);
        }
      }           
      pg[7].fill(0);   
      pg[7].textSize(pg[7].width * 0.05);
      pg[7].text("sjeng", pg[7].width * 0.4, pg[7].height * 0.2);
      pg[7].textSize(pg[7].width * 0.01);
      pg[7].text(0, pg[7].width * 0.08, pg[7].height * 0.4);
      pg[7].text(maxvtladdrsjeng, pg[7].width * 0.92, pg[7].height * 0.4);
      pg[7].text(0, pg[7].width * 0.08, pg[7].height * 0.8);
      pg[7].text(maxphyaddrsjeng, pg[7].width * 0.92, pg[7].height * 0.8);  
      pg[7].endDraw();
    
      pg[8].beginDraw();
      pg[8].background(255);
      pg[8].stroke(0);
      pg[8].line(pg[8].width * 0.1, pg[8].height * 0.4, pg[8].width * 0.9, pg[8].height * 0.4);
      pg[8].line(pg[8].width * 0.1, pg[8].height * 0.8, pg[8].width * 0.9, pg[8].height * 0.8);
      for(int i = 0; i < countxalancbmk; i++) 
      {    
        if(readxalancbmk.get(i) > 0) 
        {
          pg[8].stroke(30, 144, 255, int(float(255) / log(maxreadxalancbmk) * log(readxalancbmk.get(i))));
          pg[8].line(pg[8].width * 0.1 + pg[8].width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(i), pg[8].height * 0.4, pg[8].width * 0.1 + pg[8].width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(i), pg[8].height * 0.8);
        }
      }           
      pg[8].fill(0);   
      pg[8].textSize(pg[8].width * 0.05);
      pg[8].text("xalancbmk", pg[8].width * 0.4, pg[8].height * 0.2);
      pg[8].textSize(pg[8].width * 0.01);
      pg[8].text(0, pg[8].width * 0.08, pg[8].height * 0.4);
      pg[8].text(maxvtladdrxalancbmk, pg[8].width * 0.92, pg[8].height * 0.4);
      pg[8].text(0, pg[8].width * 0.08, pg[8].height * 0.8);
      pg[8].text(maxphyaddrxalancbmk, pg[8].width * 0.92, pg[8].height * 0.8);  
      pg[8].endDraw();
    
      for(int i=0; i<pg.length; i++)
      {
        image(pg[i], (i % 3) * width / 3.0 , (i / 3) * height / 3.0);
      }
}

void showWrite()
{
  pg[0].beginDraw();
      pg[0].background(255);
      pg[0].stroke(0);
      pg[0].line(pg[0].width * 0.1, pg[0].height * 0.4, pg[0].width * 0.9, pg[0].height * 0.4);
      pg[0].line(pg[0].width * 0.1, pg[0].height * 0.8, pg[0].width * 0.9, pg[0].height * 0.8);
      for(int i = 0; i < countastar; i++) 
      {    
        if(writeastar.get(i) > 0) 
        {
          pg[0].stroke(50, 205, 50, int(float(255) / log(maxwriteastar) * log(writeastar.get(i))));
          pg[0].line(pg[0].width * 0.1 + pg[0].width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(i), pg[0].height * 0.4, pg[0].width * 0.1 + pg[0].width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(i), pg[0].height * 0.8);    
        }
      }                
      pg[0].fill(0); 
      pg[0].textSize(pg[0].width * 0.05);
      pg[0].text("astar", pg[0].width * 0.4, pg[0].height * 0.2);
      pg[0].textSize(pg[0].width * 0.01);
      pg[0].text(0, pg[0].width * 0.08, pg[0].height * 0.4);
      pg[0].text(maxvtladdrbzip, pg[0].width * 0.92, pg[0].height * 0.4);
      pg[0].text(0, pg[0].width * 0.08, pg[0].height * 0.8);
      pg[0].text(maxphyaddrbzip, pg[0].width * 0.92, pg[0].height * 0.8);
      pg[0].endDraw();
    
      pg[1].beginDraw();
      pg[1].background(255);
      pg[1].stroke(0);
      pg[1].line(pg[1].width * 0.1, pg[1].height * 0.4, pg[1].width * 0.9, pg[1].height * 0.4);
      pg[1].line(pg[1].width * 0.1, pg[1].height * 0.8, pg[1].width * 0.9, pg[1].height * 0.8);
      for(int i = 0; i < countbzip; i++) 
      {    
        if(writebzip.get(i) > 0) 
        {
          pg[1].stroke(50, 205, 50, int(float(255) / log(maxwritebzip) * log(writebzip.get(i))));
          pg[1].line(pg[1].width * 0.1 + pg[1].width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(i), pg[1].height * 0.4, pg[1].width * 0.1 + pg[1].width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(i), pg[1].height * 0.8);
        }
      }                     
      pg[1].fill(0);    
      pg[1].textSize(pg[1].width * 0.05);
      pg[1].text("bzip", pg[1].width * 0.4, pg[1].height * 0.2);
      pg[1].textSize(pg[1].width * 0.01);
      pg[1].text(0, pg[1].width * 0.08, pg[1].height * 0.4);
      pg[1].text(maxvtladdrbzip, pg[1].width * 0.92, pg[1].height * 0.4);
      pg[1].text(0, pg[1].width * 0.08, pg[1].height * 0.8);
      pg[1].text(maxphyaddrbzip, pg[1].width * 0.92, pg[1].height * 0.8); 
      pg[1].endDraw();
    
      pg[2].beginDraw();
      pg[2].background(255);
      pg[2].stroke(0);
      pg[2].line(pg[2].width * 0.1, pg[2].height * 0.4, pg[2].width * 0.9, pg[2].height * 0.4);
      pg[2].line(pg[2].width * 0.1, pg[2].height * 0.8, pg[2].width * 0.9, pg[2].height * 0.8);
      for(int i = 0; i < countgcc; i++) 
      {    
        if(writegcc.get(i) > 0) 
        {
          pg[2].stroke(50, 205, 50, int(float(255) / log(maxwritegcc) * log(writegcc.get(i))));
          pg[2].line(pg[2].width * 0.1 + pg[2].width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(i), pg[2].height * 0.4, pg[2].width * 0.1 + pg[2].width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(i), pg[2].height * 0.8);
        }
      }                  
      pg[2].fill(0);    
      pg[2].textSize(pg[2].width * 0.05);
      pg[2].text("gcc", pg[2].width * 0.4, pg[2].height * 0.2);
      pg[2].textSize(pg[2].width * 0.01);
      pg[2].text(0, pg[2].width * 0.08, pg[2].height * 0.4);
      pg[2].text(maxvtladdrgcc, pg[2].width * 0.92, pg[2].height * 0.4);
      pg[2].text(0, pg[2].width * 0.08, pg[2].height * 0.8);
      pg[2].text(maxphyaddrgcc, pg[2].width * 0.92, pg[2].height * 0.8);  
      pg[2].endDraw();
    
      pg[3].beginDraw();
      pg[3].background(255);
      pg[3].stroke(0);
      pg[3].line(pg[3].width * 0.1, pg[3].height * 0.4, pg[3].width * 0.9, pg[3].height * 0.4);
      pg[3].line(pg[3].width * 0.1, pg[3].height * 0.8, pg[3].width * 0.9, pg[3].height * 0.8);
      for(int i = 0; i < counth264; i++) 
      {    
        if(writeh264.get(i) > 0) 
        {
          pg[3].stroke(50, 205, 50, int(float(255) / log(maxwriteh264) * log(writeh264.get(i))));
          pg[3].line(pg[3].width * 0.1 + pg[3].width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(i), pg[3].height * 0.4, pg[3].width * 0.1 + pg[3].width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(i), pg[3].height * 0.8);
        }
      }    
            
      pg[3].fill(0);   
      pg[3].textSize(pg[3].width * 0.05);
      pg[3].text("h264", pg[3].width * 0.4, pg[3].height * 0.2);
      pg[3].textSize(pg[3].width * 0.01);
      pg[3].text(0, pg[3].width * 0.08, pg[3].height * 0.4);
      pg[3].text(maxvtladdrh264, pg[3].width * 0.92, pg[3].height * 0.4);
      pg[3].text(0, pg[3].width * 0.08, pg[3].height * 0.8);
      pg[3].text(maxphyaddrh264, pg[3].width * 0.92, pg[3].height * 0.8);  
      pg[3].endDraw();
    
      pg[4].beginDraw();
      pg[4].background(255);
      pg[4].stroke(0);
      pg[4].line(pg[4].width * 0.1, pg[4].height * 0.4, pg[4].width * 0.9, pg[4].height * 0.4);
      pg[4].line(pg[4].width * 0.1, pg[4].height * 0.8, pg[4].width * 0.9, pg[4].height * 0.8);
      for(int i = 0; i < counthmmer; i++) 
      {    
        if(writehmmer.get(i) > 0) 
        {
          pg[4].stroke(50, 205, 50, int(float(255) / log(maxwritehmmer) * log(writehmmer.get(i))));
          pg[4].line(pg[4].width * 0.1 + pg[4].width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(i), pg[4].height * 0.4, pg[4].width * 0.1 + pg[4].width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(i), pg[4].height * 0.8);
        }
      }   
          
      pg[4].fill(0);   
      pg[4].textSize(pg[4].width * 0.05);
      pg[4].text("hmmer", pg[4].width * 0.4, pg[4].height * 0.2);
      pg[4].textSize(pg[4].width * 0.01);
      pg[4].text(0, pg[4].width * 0.08, pg[4].height * 0.4);
      pg[4].text(maxvtladdrhmmer, pg[4].width * 0.92, pg[4].height * 0.4);
      pg[4].text(0, pg[4].width * 0.08, pg[4].height * 0.8);
      pg[4].text(maxphyaddrhmmer, pg[4].width * 0.92, pg[4].height * 0.8);  
      pg[4].endDraw();
    
      pg[5].beginDraw();
      pg[5].background(255);
      pg[5].stroke(0);
      pg[5].line(pg[5].width * 0.1, pg[5].height * 0.4, pg[5].width * 0.9, pg[5].height * 0.4);
      pg[5].line(pg[5].width * 0.1, pg[5].height * 0.8, pg[5].width * 0.9, pg[5].height * 0.8);
      for(int i = 0; i < countlibquantum; i++) 
      {    
        if (writelibquantum.get(i) > 0) 
        {
          pg[5].stroke(50, 205, 50, int(float(255) / log(maxwritelibquantum) * log(writelibquantum.get(i))));
          pg[5].line(pg[5].width * 0.1 + pg[5].width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(i), pg[5].height * 0.4, pg[5].width * 0.1 + pg[5].width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(i), pg[5].height * 0.8);
        }
      }   
          
      pg[5].fill(0);   
      pg[5].textSize(pg[5].width * 0.05);
      pg[5].text("libquantum", pg[5].width * 0.4, pg[5].height * 0.2);
      pg[5].textSize(pg[5].width * 0.01);
      pg[5].text(0, pg[5].width * 0.08, pg[5].height * 0.4);
      pg[5].text(maxvtladdrlibquantum, pg[5].width * 0.92, pg[5].height * 0.4);
      pg[5].text(0, pg[5].width * 0.08, pg[5].height * 0.8);
      pg[5].text(maxphyaddrlibquantum, pg[5].width * 0.92, pg[5].height * 0.8);  
      pg[5].endDraw();
    
      pg[6].beginDraw();
      pg[6].background(255);
      pg[6].stroke(0);
      pg[6].line(pg[6].width * 0.1, pg[6].height * 0.4, pg[6].width * 0.9, pg[6].height * 0.4);
      pg[6].line(pg[6].width * 0.1, pg[6].height * 0.8, pg[6].width * 0.9, pg[6].height * 0.8);
      for(int i = 0; i < countmcf; i++) 
      {    
        if(writemcf.get(i) > 0) 
        {
          pg[6].stroke(50, 205, 50, int(float(255) / log(maxwritemcf) * log(writemcf.get(i))));
          pg[6].line(pg[6].width * 0.1 + pg[6].width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(i), pg[6].height * 0.4, pg[6].width * 0.1 + pg[6].width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(i), pg[6].height * 0.8);
        }
      }              
      pg[6].fill(0);   
      pg[6].textSize(pg[6].width * 0.05);
      pg[6].text("mcf", pg[6].width * 0.4, pg[6].height * 0.2);
      pg[6].textSize(pg[6].width * 0.01);
      pg[6].text(0, pg[6].width * 0.08, pg[6].height * 0.4);
      pg[6].text(maxvtladdrmcf, pg[6].width * 0.92, pg[6].height * 0.4);
      pg[6].text(0, pg[6].width * 0.08, pg[6].height * 0.8);
      pg[6].text(maxphyaddrmcf, pg[6].width * 0.92, pg[6].height * 0.8);  
      pg[6].endDraw();
    
      pg[7].beginDraw();
      pg[7].background(255);
      pg[7].stroke(0);
      pg[7].line(pg[7].width * 0.1, pg[7].height * 0.4, pg[7].width * 0.9, pg[7].height * 0.4);
      pg[7].line(pg[7].width * 0.1, pg[7].height * 0.8, pg[7].width * 0.9, pg[7].height * 0.8);
      for(int i = 0; i < countsjeng; i++) 
      {    
        if(writesjeng.get(i) > 0) 
        {
          pg[7].stroke(50, 205, 50, int(float(255) / log(maxwritesjeng) * log(writesjeng.get(i))));
          pg[7].line(pg[7].width * 0.1 + pg[7].width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(i), pg[7].height * 0.4, pg[7].width * 0.1 + pg[7].width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(i), pg[7].height * 0.8);
        }
      }             
      pg[7].fill(0);   
      pg[7].textSize(pg[7].width * 0.05);
      pg[7].text("sjeng", pg[7].width * 0.4, pg[7].height * 0.2);
      pg[7].textSize(pg[7].width * 0.01);
      pg[7].text(0, pg[7].width * 0.08, pg[7].height * 0.4);
      pg[7].text(maxvtladdrsjeng, pg[7].width * 0.92, pg[7].height * 0.4);
      pg[7].text(0, pg[7].width * 0.08, pg[7].height * 0.8);
      pg[7].text(maxphyaddrsjeng, pg[7].width * 0.92, pg[7].height * 0.8);  
      pg[7].endDraw();
    
      pg[8].beginDraw();
      pg[8].background(255);
      pg[8].stroke(0);
      pg[8].line(pg[8].width * 0.1, pg[8].height * 0.4, pg[8].width * 0.9, pg[8].height * 0.4);
      pg[8].line(pg[8].width * 0.1, pg[8].height * 0.8, pg[8].width * 0.9, pg[8].height * 0.8);
      for(int i = 0; i < countxalancbmk; i++) 
      {    
        if(writexalancbmk.get(i) > 0) 
        {
          pg[8].stroke(50, 205, 50, int(float(255) / log(maxwritexalancbmk) * log(writexalancbmk.get(i))));
          pg[8].line(pg[8].width * 0.1 + pg[8].width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(i), pg[8].height * 0.4, pg[8].width * 0.1 + pg[8].width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(i), pg[8].height * 0.8);
        }
      }             
      pg[8].fill(0);   
      pg[8].textSize(pg[8].width * 0.05);
      pg[8].text("xalancbmk", pg[8].width * 0.4, pg[8].height * 0.2);
      pg[8].textSize(pg[8].width * 0.01);
      pg[8].text(0, pg[8].width * 0.08, pg[8].height * 0.4);
      pg[8].text(maxvtladdrxalancbmk, pg[8].width * 0.92, pg[8].height * 0.4);
      pg[8].text(0, pg[8].width * 0.08, pg[8].height * 0.8);
      pg[8].text(maxphyaddrxalancbmk, pg[8].width * 0.92, pg[8].height * 0.8);  
      pg[8].endDraw();
    
      for(int i=0; i<pg.length; i++)
      {
        image(pg[i], (i % 3) * width / 3.0 , (i / 3) * height / 3.0);
      }
}

void showExec()
{
  pg[0].beginDraw();
      pg[0].background(255);
      pg[0].stroke(0);
      pg[0].line(pg[0].width * 0.1, pg[0].height * 0.4, pg[0].width * 0.9, pg[0].height * 0.4);
      pg[0].line(pg[0].width * 0.1, pg[0].height * 0.8, pg[0].width * 0.9, pg[0].height * 0.8);
      for(int i = 0; i < countastar; i++) 
      {    
        if(execastar.get(i) > 0) 
        {
          pg[0].stroke(255, 20, 147, int(float(255) / log(maxexecastar) * log(execastar.get(i))));
          pg[0].line(pg[0].width * 0.1 + pg[0].width * 0.8 / maxfloatvtladdrastar * floatvtladdrastar.get(i), pg[0].height * 0.4, pg[0].width * 0.1 + pg[0].width * 0.8 / maxfloatphyaddrastar * floatphyaddrastar.get(i), pg[0].height * 0.8);    
        }
      }                
      pg[0].fill(0); 
      pg[0].textSize(pg[0].width * 0.05);
      pg[0].text("astar", pg[0].width * 0.4, pg[0].height * 0.2);
      pg[0].textSize(pg[0].width * 0.01);
      pg[0].text(0, pg[0].width * 0.08, pg[0].height * 0.4);
      pg[0].text(maxvtladdrbzip, pg[0].width * 0.92, pg[0].height * 0.4);
      pg[0].text(0, pg[0].width * 0.08, pg[0].height * 0.8);
      pg[0].text(maxphyaddrbzip, pg[0].width * 0.92, pg[0].height * 0.8);
      pg[0].endDraw();
    
      pg[1].beginDraw();
      pg[1].background(255);
      pg[1].stroke(0);
      pg[1].line(pg[1].width * 0.1, pg[1].height * 0.4, pg[1].width * 0.9, pg[1].height * 0.4);
      pg[1].line(pg[1].width * 0.1, pg[1].height * 0.8, pg[1].width * 0.9, pg[1].height * 0.8);
      for(int i = 0; i < countbzip; i++) 
      {     
        if(execbzip.get(i) > 0) 
        {
          pg[1].stroke(255, 20, 147, int(float(255) / log(maxexecbzip) * log(execbzip.get(i))));
          pg[1].line(pg[1].width * 0.1 + pg[1].width * 0.8 / maxfloatvtladdrbzip * floatvtladdrbzip.get(i), pg[1].height * 0.4, pg[1].width * 0.1 + pg[1].width * 0.8 / maxfloatphyaddrbzip * floatphyaddrbzip.get(i), pg[1].height * 0.8);
        }
      }                     
      pg[1].fill(0);    
      pg[1].textSize(pg[1].width * 0.05);
      pg[1].text("bzip", pg[1].width * 0.4, pg[1].height * 0.2);
      pg[1].textSize(pg[1].width * 0.01);
      pg[1].text(0, pg[1].width * 0.08, pg[1].height * 0.4);
      pg[1].text(maxvtladdrbzip, pg[1].width * 0.92, pg[1].height * 0.4);
      pg[1].text(0, pg[1].width * 0.08, pg[1].height * 0.8);
      pg[1].text(maxphyaddrbzip, pg[1].width * 0.92, pg[1].height * 0.8); 
      pg[1].endDraw();
    
      pg[2].beginDraw();
      pg[2].background(255);
      pg[2].stroke(0);
      pg[2].line(pg[2].width * 0.1, pg[2].height * 0.4, pg[2].width * 0.9, pg[2].height * 0.4);
      pg[2].line(pg[2].width * 0.1, pg[2].height * 0.8, pg[2].width * 0.9, pg[2].height * 0.8);
      for(int i = 0; i < countgcc; i++) 
      {     
        if(execgcc.get(i) > 0) 
        {
          pg[2].stroke(255, 20, 147, int(float(255) / log(maxexecgcc) * log(execgcc.get(i))));
          pg[2].line(pg[2].width * 0.1 + pg[2].width * 0.8 / maxfloatvtladdrgcc * floatvtladdrgcc.get(i), pg[2].height * 0.4, pg[2].width * 0.1 + pg[2].width * 0.8 / maxfloatphyaddrgcc * floatphyaddrgcc.get(i), pg[2].height * 0.8);
        }
      }                  
      pg[2].fill(0);    
      pg[2].textSize(pg[2].width * 0.05);
      pg[2].text("gcc", pg[2].width * 0.4, pg[2].height * 0.2);
      pg[2].textSize(pg[2].width * 0.01);
      pg[2].text(0, pg[2].width * 0.08, pg[2].height * 0.4);
      pg[2].text(maxvtladdrgcc, pg[2].width * 0.92, pg[2].height * 0.4);
      pg[2].text(0, pg[2].width * 0.08, pg[2].height * 0.8);
      pg[2].text(maxphyaddrgcc, pg[2].width * 0.92, pg[2].height * 0.8);  
      pg[2].endDraw();
    
      pg[3].beginDraw();
      pg[3].background(255);
      pg[3].stroke(0);
      pg[3].line(pg[3].width * 0.1, pg[3].height * 0.4, pg[3].width * 0.9, pg[3].height * 0.4);
      pg[3].line(pg[3].width * 0.1, pg[3].height * 0.8, pg[3].width * 0.9, pg[3].height * 0.8);
      for(int i = 0; i < counth264; i++) 
      {    
        if(exech264.get(i) > 0) 
        {
          pg[3].stroke(255, 20, 147, int(float(255) / log(maxexech264) * log(exech264.get(i))));
          pg[3].line(pg[3].width * 0.1 + pg[3].width * 0.8 / maxfloatvtladdrh264 * floatvtladdrh264.get(i), pg[3].height * 0.4, pg[3].width * 0.1 + pg[3].width * 0.8 / maxfloatphyaddrh264 * floatphyaddrh264.get(i), pg[3].height * 0.8);
        }
      }                
      pg[3].fill(0);   
      pg[3].textSize(pg[3].width * 0.05);
      pg[3].text("h264", pg[3].width * 0.4, pg[3].height * 0.2);
      pg[3].textSize(pg[3].width * 0.01);
      pg[3].text(0, pg[3].width * 0.08, pg[3].height * 0.4);
      pg[3].text(maxvtladdrh264, pg[3].width * 0.92, pg[3].height * 0.4);
      pg[3].text(0, pg[3].width * 0.08, pg[3].height * 0.8);
      pg[3].text(maxphyaddrh264, pg[3].width * 0.92, pg[3].height * 0.8);  
      pg[3].endDraw();
    
      pg[4].beginDraw();
      pg[4].background(255);
      pg[4].stroke(0);
      pg[4].line(pg[4].width * 0.1, pg[4].height * 0.4, pg[4].width * 0.9, pg[4].height * 0.4);
      pg[4].line(pg[4].width * 0.1, pg[4].height * 0.8, pg[4].width * 0.9, pg[4].height * 0.8);
      for(int i = 0; i < counthmmer; i++) 
      {    
        if(exechmmer.get(i) > 0) 
        {
          pg[4].stroke(255, 20, 147, int(float(255) / log(maxexechmmer) * log(exechmmer.get(i))));
          pg[4].line(pg[4].width * 0.1 + pg[4].width * 0.8 / maxfloatvtladdrhmmer * floatvtladdrhmmer.get(i), pg[4].height * 0.4, pg[4].width * 0.1 + pg[4].width * 0.8 / maxfloatphyaddrhmmer * floatphyaddrhmmer.get(i), pg[4].height * 0.8);
        }
      }              
      pg[4].fill(0);   
      pg[4].textSize(pg[4].width * 0.05);
      pg[4].text("hmmer", pg[4].width * 0.4, pg[4].height * 0.2);
      pg[4].textSize(pg[4].width * 0.01);
      pg[4].text(0, pg[4].width * 0.08, pg[4].height * 0.4);
      pg[4].text(maxvtladdrhmmer, pg[4].width * 0.92, pg[4].height * 0.4);
      pg[4].text(0, pg[4].width * 0.08, pg[4].height * 0.8);
      pg[4].text(maxphyaddrhmmer, pg[4].width * 0.92, pg[4].height * 0.8);  
      pg[4].endDraw();
    
      pg[5].beginDraw();
      pg[5].background(255);
      pg[5].stroke(0);
      pg[5].line(pg[5].width * 0.1, pg[5].height * 0.4, pg[5].width * 0.9, pg[5].height * 0.4);
      pg[5].line(pg[5].width * 0.1, pg[5].height * 0.8, pg[5].width * 0.9, pg[5].height * 0.8);
      for(int i = 0; i < countlibquantum; i++) 
      {    
        if(execlibquantum.get(i) > 0) 
        {
          pg[5].stroke(255, 20, 147, int(float(255) / log(maxexeclibquantum) * log(execlibquantum.get(i))));
          pg[5].line(pg[5].width * 0.1 + pg[5].width * 0.8 / maxfloatvtladdrlibquantum * floatvtladdrlibquantum.get(i), pg[5].height * 0.4, pg[5].width * 0.1 + pg[5].width * 0.8 / maxfloatphyaddrlibquantum * floatphyaddrlibquantum.get(i), pg[5].height * 0.8);
        }
      }              
      pg[5].fill(0);   
      pg[5].textSize(pg[5].width * 0.05);
      pg[5].text("libquantum", pg[5].width * 0.4, pg[5].height * 0.2);
      pg[5].textSize(pg[5].width * 0.01);
      pg[5].text(0, pg[5].width * 0.08, pg[5].height * 0.4);
      pg[5].text(maxvtladdrlibquantum, pg[5].width * 0.92, pg[5].height * 0.4);
      pg[5].text(0, pg[5].width * 0.08, pg[5].height * 0.8);
      pg[5].text(maxphyaddrlibquantum, pg[5].width * 0.92, pg[5].height * 0.8);  
      pg[5].endDraw();
    
      pg[6].beginDraw();
      pg[6].background(255);
      pg[6].stroke(0);
      pg[6].line(pg[6].width * 0.1, pg[6].height * 0.4, pg[6].width * 0.9, pg[6].height * 0.4);
      pg[6].line(pg[6].width * 0.1, pg[6].height * 0.8, pg[6].width * 0.9, pg[6].height * 0.8);
      for(int i = 0; i < countmcf; i++) 
      {    
        if(execmcf.get(i) > 0) 
        {
          pg[6].stroke(255, 20, 147, int(float(255) / log(maxexecmcf) * log(execmcf.get(i))));
          pg[6].line(pg[6].width * 0.1 + pg[6].width * 0.8 / maxfloatvtladdrmcf * floatvtladdrmcf.get(i), pg[6].height * 0.4, pg[6].width * 0.1 + pg[6].width * 0.8 / maxfloatphyaddrmcf * floatphyaddrmcf.get(i), pg[6].height * 0.8);
        }
      }              
      pg[6].fill(0);   
      pg[6].textSize(pg[6].width * 0.05);
      pg[6].text("mcf", pg[6].width * 0.4, pg[6].height * 0.2);
      pg[6].textSize(pg[6].width * 0.01);
      pg[6].text(0, pg[6].width * 0.08, pg[6].height * 0.4);
      pg[6].text(maxvtladdrmcf, pg[6].width * 0.92, pg[6].height * 0.4);
      pg[6].text(0, pg[6].width * 0.08, pg[6].height * 0.8);
      pg[6].text(maxphyaddrmcf, pg[6].width * 0.92, pg[6].height * 0.8);  
      pg[6].endDraw();
    
      pg[7].beginDraw();
      pg[7].background(255);
      pg[7].stroke(0);
      pg[7].line(pg[7].width * 0.1, pg[7].height * 0.4, pg[7].width * 0.9, pg[7].height * 0.4);
      pg[7].line(pg[7].width * 0.1, pg[7].height * 0.8, pg[7].width * 0.9, pg[7].height * 0.8);
      for(int i = 0; i < countsjeng; i++) 
      {     
        if(execsjeng.get(i) > 0) 
        {
          pg[7].stroke(255, 20, 147, int(float(255) / log(maxexecsjeng) * log(execsjeng.get(i))));
          pg[7].line(pg[7].width * 0.1 + pg[7].width * 0.8 / maxfloatvtladdrsjeng * floatvtladdrsjeng.get(i), pg[7].height * 0.4, pg[7].width * 0.1 + pg[7].width * 0.8 / maxfloatphyaddrsjeng * floatphyaddrsjeng.get(i), pg[7].height * 0.8);
        }
      }              
      pg[7].fill(0);   
      pg[7].textSize(pg[7].width * 0.05);
      pg[7].text("sjeng", pg[7].width * 0.4, pg[7].height * 0.2);
      pg[7].textSize(pg[7].width * 0.01);
      pg[7].text(0, pg[7].width * 0.08, pg[7].height * 0.4);
      pg[7].text(maxvtladdrsjeng, pg[7].width * 0.92, pg[7].height * 0.4);
      pg[7].text(0, pg[7].width * 0.08, pg[7].height * 0.8);
      pg[7].text(maxphyaddrsjeng, pg[7].width * 0.92, pg[7].height * 0.8);  
      pg[7].endDraw();
    
      pg[8].beginDraw();
      pg[8].background(255);
      pg[8].stroke(0);
      pg[8].line(pg[8].width * 0.1, pg[8].height * 0.4, pg[8].width * 0.9, pg[8].height * 0.4);
      pg[8].line(pg[8].width * 0.1, pg[8].height * 0.8, pg[8].width * 0.9, pg[8].height * 0.8);
      for(int i = 0; i < countxalancbmk; i++) 
      {    
        if(execxalancbmk.get(i) > 0) 
        {
          pg[8].stroke(255, 20, 147, int(float(255) / log(maxexecxalancbmk) * log(execxalancbmk.get(i))));
          pg[8].line(pg[8].width * 0.1 + pg[8].width * 0.8 / maxfloatvtladdrxalancbmk * floatvtladdrxalancbmk.get(i), pg[8].height * 0.4, pg[8].width * 0.1 + pg[8].width * 0.8 / maxfloatphyaddrxalancbmk * floatphyaddrxalancbmk.get(i), pg[8].height * 0.8);
        }
      }              
      pg[8].fill(0);   
      pg[8].textSize(pg[8].width * 0.05);
      pg[8].text("xalancbmk", pg[8].width * 0.4, pg[8].height * 0.2);
      pg[8].textSize(pg[8].width * 0.01);
      pg[8].text(0, pg[8].width * 0.08, pg[8].height * 0.4);
      pg[8].text(maxvtladdrxalancbmk, pg[8].width * 0.92, pg[8].height * 0.4);
      pg[8].text(0, pg[8].width * 0.08, pg[8].height * 0.8);
      pg[8].text(maxphyaddrxalancbmk, pg[8].width * 0.92, pg[8].height * 0.8);  
      pg[8].endDraw();
    
      for(int i=0; i<pg.length; i++)
      {
        image(pg[i], (i % 3) * width / 3.0 , (i / 3) * height / 3.0);
      }
}

void showStatistic()
{
  fill(0);
  textSize(width * 0.02);
  text("Ratio of Total Accesss", width * 0.4, height * 0.08);
  stroke(0);
  line(width * 0.2, height * 0.9, width * 0.8, height * 0.9);
  line(width * 0.2, height * 0.9, width * 0.2, height * 0.1);
  fill(0);
  textSize(width * 0.01);
  for(int i = 0; i < 11; i++)
  {
    line(width * 0.2, height * 0.9 - height * 0.8 / 10.0 * i, width * 0.2 - width * 0.01, height * 0.9 - height * 0.8 / 10.0 * i);
    text(10 * i + "%", width * 0.15, height * 0.9 - height * 0.8 / 10.0 * i);
  }
  
  fill(0);
  textSize(width * 0.01);
  text("astar", width * 0.235, height * 0.92);
  fill(30, 144, 255);
  rect(width * 0.23, height * 0.9 - height * 0.8 / sumaccessastar * sumreadastar, width * 0.01, height * 0.8 / sumaccessastar * sumreadastar);
  fill(50, 205, 50);
  rect(width * 0.24, height * 0.9 - height * 0.8 / sumaccessastar * sumwriteastar, width * 0.01, height * 0.8 / sumaccessastar * sumwriteastar);
  fill(255, 20, 147);
  rect(width * 0.25, height * 0.9 - height * 0.8 / sumaccessastar * sumexecastar, width * 0.01, height * 0.8 / sumaccessastar * sumexecastar);
  
  fill(0);
  textSize(width * 0.01);
  text("bzip", width * 0.295, height * 0.92);
  fill(30, 144, 255);
  rect(width * 0.29, height * 0.9 - height * 0.8 / sumaccessbzip * sumreadbzip, width * 0.01, height * 0.8 / sumaccessbzip * sumreadbzip);
  fill(50, 205, 50);
  rect(width * 0.30, height * 0.9 - height * 0.8 / sumaccessbzip * sumwritebzip, width * 0.01, height * 0.8 / sumaccessbzip * sumwritebzip);
  fill(255, 20, 147);
  rect(width * 0.31, height * 0.9 - height * 0.8 / sumaccessbzip * sumexecbzip, width * 0.01, height * 0.8 / sumaccessbzip * sumexecbzip);

  fill(0);
  textSize(width * 0.01);
  text("gcc", width * 0.355, height * 0.92);
  fill(30, 144, 255);
  rect(width * 0.35, height * 0.9 - height * 0.8 / sumaccessgcc * sumreadgcc, width * 0.01, height * 0.8 / sumaccessgcc * sumreadgcc);
  fill(50, 205, 50);
  rect(width * 0.36, height * 0.9 - height * 0.8 / sumaccessgcc * sumwritegcc, width * 0.01, height * 0.8 / sumaccessgcc * sumwritegcc);
  fill(255, 20, 147);
  rect(width * 0.37, height * 0.9 - height * 0.8 / sumaccessgcc * sumexecgcc, width * 0.01, height * 0.8 / sumaccessgcc * sumexecgcc);

  fill(0);
  textSize(width * 0.01);
  text("h264", width * 0.415, height * 0.92);
  fill(30, 144, 255);
  rect(width * 0.41, height * 0.9 - height * 0.8 / sumaccessh264 * sumreadh264, width * 0.01, height * 0.8 / sumaccessh264 * sumreadh264);
  fill(50, 205, 50);
  rect(width * 0.42, height * 0.9 - height * 0.8 / sumaccessh264 * sumwriteh264, width * 0.01, height * 0.8 / sumaccessh264 * sumwriteh264);
  fill(255, 20, 147);
  rect(width * 0.43, height * 0.9 - height * 0.8 / sumaccessh264 * sumexech264, width * 0.01, height * 0.8 / sumaccessh264 * sumexech264);

  fill(0);
  textSize(width * 0.01);
  text("hmmer", width * 0.47, height * 0.92);
  fill(30, 144, 255);
  rect(width * 0.47, height * 0.9 - height * 0.8 / sumaccesshmmer * sumreadhmmer, width * 0.01, height * 0.8 / sumaccesshmmer * sumreadhmmer);
  fill(50, 205, 50);
  rect(width * 0.48, height * 0.9 - height * 0.8 / sumaccesshmmer * sumwritehmmer, width * 0.01, height * 0.8 / sumaccesshmmer * sumwritehmmer);
  fill(255, 20, 147);
  rect(width * 0.49, height * 0.9 - height * 0.8 / sumaccesshmmer * sumexechmmer, width * 0.01, height * 0.8 / sumaccesshmmer * sumexechmmer);

  fill(0);
  textSize(width * 0.01);
  text("libquantum", width * 0.52, height * 0.92);
  fill(30, 144, 255);
  rect(width * 0.53, height * 0.9 - height * 0.8 / sumaccesslibquantum * sumreadlibquantum, width * 0.01, height * 0.8 / sumaccesslibquantum * sumreadlibquantum);
  fill(50, 205, 50);
  rect(width * 0.54, height * 0.9 - height * 0.8 / sumaccesslibquantum * sumwritelibquantum, width * 0.01, height * 0.8 / sumaccesslibquantum * sumwritelibquantum);
  fill(255, 20, 147);
  rect(width * 0.55, height * 0.9 - height * 0.8 / sumaccesslibquantum * sumexeclibquantum, width * 0.01, height * 0.8 / sumaccesslibquantum * sumexeclibquantum);

  fill(0);
  textSize(width * 0.01);
  text("mcf", width * 0.595, height * 0.92);
  fill(30, 144, 255);
  rect(width * 0.59, height * 0.9 - height * 0.8 / sumaccessmcf * sumreadmcf, width * 0.01, height * 0.8 / sumaccessmcf * sumreadmcf);
  fill(50, 205, 50);
  rect(width * 0.60, height * 0.9 - height * 0.8 / sumaccessmcf * sumwritemcf, width * 0.01, height * 0.8 / sumaccessmcf * sumwritemcf);
  fill(255, 20, 147);
  rect(width * 0.61, height * 0.9 - height * 0.8 / sumaccessmcf * sumexecmcf, width * 0.01, height * 0.8 / sumaccessmcf * sumexecmcf);

  fill(0);
  textSize(width * 0.01);
  text("sjeng", width * 0.655, height * 0.92);
  fill(30, 144, 255);
  rect(width * 0.65, height * 0.9 - height * 0.8 / sumaccesssjeng * sumreadsjeng, width * 0.01, height * 0.8 / sumaccesssjeng * sumreadsjeng);
  fill(50, 205, 50);
  rect(width * 0.66, height * 0.9 - height * 0.8 / sumaccesssjeng * sumwritesjeng, width * 0.01, height * 0.8 / sumaccesssjeng * sumwritesjeng);
  fill(255, 20, 147);
  rect(width * 0.67, height * 0.9 - height * 0.8 / sumaccesssjeng * sumexecsjeng, width * 0.01, height * 0.8 / sumaccesssjeng * sumexecsjeng);

  fill(0);
  textSize(width * 0.01);
  text("xalancbmk", width * 0.7, height * 0.92);
  fill(30, 144, 255);
  rect(width * 0.71, height * 0.9 - height * 0.8 / sumaccessxalancbmk * sumreadxalancbmk, width * 0.01, height * 0.8 / sumaccessxalancbmk * sumreadxalancbmk);
  fill(50, 205, 50);
  rect(width * 0.72, height * 0.9 - height * 0.8 / sumaccessxalancbmk * sumwritexalancbmk, width * 0.01, height * 0.8 / sumaccessxalancbmk * sumwritexalancbmk);
  fill(255, 20, 147);
  rect(width * 0.73, height * 0.9 - height * 0.8 / sumaccessxalancbmk * sumexecxalancbmk, width * 0.01, height * 0.8 / sumaccessxalancbmk * sumexecxalancbmk);
}