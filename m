Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B526035A5
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Oct 2022 00:07:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1okukL-0005B4-Fl;
	Tue, 18 Oct 2022 22:07:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <liam.howlett@oracle.com>) id 1okuhY-0004iN-VZ
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 22:04:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Type:In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender
 :Reply-To:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To
 :Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VxcQnSfd69YwtYF/F6uvgTiPnv4jHDUuR6Vr0hyFRdA=; b=A7A4sw70zHUckuOVTM1tyWKLSA
 Lpq/A4uYVzdS8tDFLDqsQG1Rv0+PYooOxVtBOxn9Drxgn8rIzX4SuP9W2KZZVzMSuBsSRm/GoGNls
 YpwEIzGWS9zGGwQwGuNJTTI+gWxowiDzDKGoX08W+A7dN1zqgSS6aP/4kKI8isM67wqc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Type:
 In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VxcQnSfd69YwtYF/F6uvgTiPnv4jHDUuR6Vr0hyFRdA=; b=RMIXpShdltv6zeqaRuGsVrOxjj
 JwDMrghFNQXbePbIu1GC5i9RT9qjIHxOoBPiNbXyHf6YwBCFquiSQeN/tLsFqStxKi7ULzdwOxgD2
 wmXoj0zoodOi+D3mwlYkc/sSQrvezsx3IBOph4WK+XSFFWbatvSX4ozYLD+g/qwRN60o=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1okuhT-0007q3-Sc for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Oct 2022 22:04:44 +0000
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 29ILws58027958;
 Tue, 18 Oct 2022 22:04:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-id : content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=VxcQnSfd69YwtYF/F6uvgTiPnv4jHDUuR6Vr0hyFRdA=;
 b=tmOeZvt/9y4m8W9zzKC+LZh7/U8tepOqXCx/xfS36Cvb6A05zDuxYbyY6k2tgRL+EUQH
 XfhV10cMUEbqlcslt7B9YNcVkL73ihKF//mBbPqLEj6ci4ZMcFTZhvz3mJEi1f/lXab6
 478iObiEQ8tI2H9LAPK6a+gCo18zgqtU7qVzItrOgrsJad9UF9Nj1yZNNXVFQBI0iCGZ
 D0ICAsesSfpUuXoK8Z1+43qq00I9W/HQY8Z+OMhdiGiokbz31z+yewcwpjZ2GpFiZmUt
 i2Xtk3vMm9h9b4Xs6mX6n4Y5Vjc1GrADKXnDF9DWm1zVz8jNKBkrxX0hzu6d/LtoZ+Sa 0Q== 
Received: from phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com
 (phxpaimrmta03.appoci.oracle.com [138.1.37.129])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3k7mu00cax-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Oct 2022 22:04:15 +0000
Received: from pps.filterd
 (phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (8.17.1.5/8.17.1.5)
 with ESMTP id 29IJp30W024373; Tue, 18 Oct 2022 22:04:14 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
 by phxpaimrmta03.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id
 3k8hu6vjvk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Oct 2022 22:04:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DrMsH75rWkQZp8xeJGC0CHWd2dpanarSWSXsxu5aSeZmIflo8Ihb3KsRM36THDaEtmHDbUvco06vyQ2wVoEDdNnBUQDzS9IfNjTqeS4wcg8im92blQxVQCc8uv9LBUdrcp80MlibYPrOLptzwfy8C2eiTnO0V93onGtkcxWvjErPyuxuamKczgsNVfmGqal64bVC2DASlgD3RBsqO0ten+uxwtg7pl/vWKkHUb+UFhjT8SumrAC3uJHDITigZvuCtZwoDc8Nx363ZxEO3i6LafqQ6RgugC+QhMdzPZ7ye4Q5CpAdBxHEil4y+FP9g4NoUeY6EnLysybKPRV2xIqcbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VxcQnSfd69YwtYF/F6uvgTiPnv4jHDUuR6Vr0hyFRdA=;
 b=Xt58KjNIOENV0TAQ4JRlgd3raBfr2sUiLMGshvJM6IHe3gzBuHWSpPiCGCEDe68MaufzqQgYdTLphe6WUC30YyFnKO42sgQ7v9VSzfLISlCgXQ9NqHDzctE8T+FHUMOUSOv8QTmaR5/CHdJuPTYIYaCKOHa9n3ofPgst4tWsdiNYoXYuWnPKf4HxYS32Ts5rjcLpSL+NlCiiR8BQejL5qQj2WfNRJXLyHstQO8HHts46N+3R0YhrQJZvhOsgN07uHtNVebzUGT2sPqps7AiY0UtOyAeugQPD0xG7NGReaYcyvs77yMmAnigV9GMJhxmkHtAS1F+zGQkWcW/gDzyx7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VxcQnSfd69YwtYF/F6uvgTiPnv4jHDUuR6Vr0hyFRdA=;
 b=GpM/sv5ppEg8s5tCWLD9bhncJEmqDcLEw/xf1+c5YNIbCYiIgimQcxkbtXMvNeUxdiC+BL+rxUDjej1iWLPkWnwP5P9PQ8EQeV09JC8DCqE6rZYvL9XflCsGCMgBxjjMiTcTjVmxsbdN9R3lDs4hk5HgBPwJNqOb8S91QSSsKjw=
Received: from SN6PR10MB3022.namprd10.prod.outlook.com (2603:10b6:805:d8::25)
 by BN0PR10MB5077.namprd10.prod.outlook.com (2603:10b6:408:12e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Tue, 18 Oct
 2022 22:04:12 +0000
Received: from SN6PR10MB3022.namprd10.prod.outlook.com
 ([fe80::f378:f1d0:796a:55a1]) by SN6PR10MB3022.namprd10.prod.outlook.com
 ([fe80::f378:f1d0:796a:55a1%3]) with mapi id 15.20.5723.033; Tue, 18 Oct 2022
 22:04:12 +0000
From: Liam Howlett <liam.howlett@oracle.com>
To: Andrew Morton <akpm@linux-foundation.org>
Thread-Topic: [linux-next:master] BUILD REGRESSION
 4ca786ae6681b90b0ec3f4c55c89d12f835f8944
Thread-Index: AQHY4wi4ll2T+t/t60W7Z6YVc+6WFq4Uo9QAgAARIwA=
Date: Tue, 18 Oct 2022 22:04:12 +0000
Message-ID: <20221018220356.s5nxywee42mcxkyo@revolver>
References: <634eca23.ML3KLI/hjp2jt28w%lkp@intel.com>
 <20221018140236.f55b76d77f5b872edf9bfdce@linux-foundation.org>
In-Reply-To: <20221018140236.f55b76d77f5b872edf9bfdce@linux-foundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR10MB3022:EE_|BN0PR10MB5077:EE_
x-ms-office365-filtering-correlation-id: a003eafe-fb69-4f86-d217-08dab154b093
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ycz6E/+pXRKd3u0PMy8oZSWcBsvoSIy1152qCfX8kcmalm5fjTKAwEnGnNr2avvdD+6hO6PJF7HZ4Ght8k4tgfiBTxaLTYh76zKo4b79O95hQhFRPnXFzShkagliWFz9UkuS5Sb9yy/gJPLgX7ziE72T54flXubHnwmfQurU+pS1gxFR9nogmOH4l4XbUBWlgn8Z1mdRiAMeBkl6GQiRs5Qa8ieDYu1QC2xPrjJ3+52eVTAw9MIANoBwyv5tuEqLA0KykHXl8qVKPpvxTHTLJGUiWjMH9Q1vYp8UgtzvcxmUu7S4gRr3LamY5HJkf2iVZ6C38ZMBlMO7VZLqzBGKd2FdKVfdL/VySc8l4OngKPBKZBM9q3+ObMsiQAcmjo3ZFItec1vpi9NQj660Fg/B9TjCmBiGPxkv1wsVong+lRrDcP6Kl9kYmVPc6+F6b0huK3d/SbrY4xfxxIy/0e0o6Edjp0GeDxB0V2Pl1XMcVzPs+fUpLZ6DOXChCVwe05jlMST0bUpdyYBMWDByk7xiKEslKxNdX7ONUDXmuw0kXbi7wGuSeEU5LIw49o7kwcFk6JP9ZltOD+hGW61yXg5ATfIHcwOqOsew/Yqd4BG3x6qwDZSbNjqaOY5+O7aKzaJk9PKy6k64EFrvBfz0h7Bac7c87f3mtXyOxjOHys9wOpFEAUhBpFqH8rbch89VvYC1fQc4eFVMtosb9Mf1X88oaVuX8nWIiwgDauYs0rztqVcI7fnsfMniYbJxDEMzJt6ynnN/+J10/bGeajkSGnjSfSCGxq5eujC8zyEuftmAR3OFYYRa93o9RRY3r3Koxy06
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR10MB3022.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(396003)(346002)(39860400002)(366004)(136003)(451199015)(38100700002)(86362001)(5660300002)(44832011)(2906002)(122000001)(186003)(1076003)(54906003)(83380400001)(38070700005)(478600001)(316002)(6506007)(91956017)(966005)(41300700001)(9686003)(6486002)(26005)(6512007)(71200400001)(6916009)(66446008)(76116006)(66556008)(66476007)(66946007)(64756008)(8936002)(33716001)(4326008)(8676002)(98903001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5mgMkU4sbcA98Nmjhr7VASQXIn7FCKrmSBk+id49VV4CQRNI5zraHhlcDveA?=
 =?us-ascii?Q?XtQSCKhvWJCnbw54Kn0ssnb3fFeBiDaI77HG9jpcV6+YD+sDKFjIQ/bqlzj9?=
 =?us-ascii?Q?ggLnuDQR36oes/Cv0+XlLcIv57LcoRJKx2Oq+AKNda1jjtA1H9UidoLJzxqK?=
 =?us-ascii?Q?twoVveiZF12RbecTqLekc0Sjy62FuqldVK16KL2GEVPrxE93CJiD5zExRz3Y?=
 =?us-ascii?Q?YzUh5BlDThLbWJUWEHRLgy607F4MV82HE4VApHP8x9GFRiI9OHvBJt4SuQYJ?=
 =?us-ascii?Q?DK9X55fVY/cKDEzc4cGX3Fnmr0NdRS4QI/vohwcgD105RmZdl/TWvPrPbIA3?=
 =?us-ascii?Q?dCYRGbdtPgEQJa3Dp4fResKPlUdspwVhPxLk4mXVnrFEz0wtWrRKQJK4oNWs?=
 =?us-ascii?Q?MVt/FKjTdDch3vZSlbLOBl+1RStV2Tcs9zZC7mGKp7w05yFcq2EhOLuko7uf?=
 =?us-ascii?Q?l/ZpfG2eJ4UMdSdxTDCimQeAY73e3j/km6xvzELCAtVw3PAI4ngVLBfnXyGB?=
 =?us-ascii?Q?o6+seULG/4L/0aDyJ+RZXx4T2FkRiCAUxLRPWIrc4OkAITo13jl3tn1Xra0s?=
 =?us-ascii?Q?rV0y4qm9fEU3wtA5DCjMUIveG3BWfbLxDbNGudtz3mUKmT9rF3b/A27+0+7z?=
 =?us-ascii?Q?1Bn487O6Dg1ab955kOWF0uS9m5wnVQ3bzot6MypeODRdiNEUD7anLIxTdpkI?=
 =?us-ascii?Q?GLb9FKm5htEXSpZx9ySAmLQjaGcv0krV5HnzwzzMi3rqW2ZBThg2NX+oHx/x?=
 =?us-ascii?Q?LSUv+453e0+y0JP41O96d3VSl57bWxKrebiGz6zbJzpcIEe+TWP+Ljo819GR?=
 =?us-ascii?Q?YJtXbyS8ZVUkZHLpecSZar/1hpIoduTUINUNdgzueRlf4B5YGDLos5au7ISs?=
 =?us-ascii?Q?k4B76jysbLAF9JQRmuczbSE93zP2r0lfevuUbNWhNfutQOftSIDyQnYP4l0s?=
 =?us-ascii?Q?pi+n313+VSWbo80FrHxmmrtNx3fcFSxR3XVM2d/veoigS2zmcpYdHN5ahJ+W?=
 =?us-ascii?Q?IM4hyNjSQeQIt1Ce9mu3BGJT/vct9TdFz77TJBFvFOQ+Us098q59HqrwCAJq?=
 =?us-ascii?Q?XBgrPzxJe7L4iBwUmvYIr3pOTN4WHvFjDCRF42VIoS3UquA/IG2RdDGN6RJC?=
 =?us-ascii?Q?tjFLwd90Nw+oldAbpFF9isgGcd57y6BcPnozizysPjcM+aWx0Gfl8DLNS/Su?=
 =?us-ascii?Q?evEuHgY+9Mk/3keSM1XggxoiR3MZHnXhX617AlkruxU27YYbwT5xexOH6S47?=
 =?us-ascii?Q?HYGKZnA+26ZcLCJCDPNRqvF0mF3O/JTnWCoMHMWkmrJqO97E2/84iQKmmg2n?=
 =?us-ascii?Q?vOSnNsvSyaOqSISVMJugWL50FZVSH2keu69nU0v07dvDgGqnghm9B4lS/q8x?=
 =?us-ascii?Q?jtWMny5H1+MLE0++OXjET2U5rjh0UMy+EgyJS/bL75wWCproUs85lfMCsvWN?=
 =?us-ascii?Q?pFdGZWOY+ywXMPX/9jkXdudAI+HZNAy0Q7bFNreXTQizYsSYWHgEfJiBBEVe?=
 =?us-ascii?Q?B3c+gUawHDhUsbOm4kuT3l0I59sJb4Yn2EiVYxc36KTVN43R6dR/650KEQC4?=
 =?us-ascii?Q?IjIE15mGwLxEPbIg61s3cI1PydehTCzbk5oXSi0O7qyC0t26TR2ocFnCJIi6?=
 =?us-ascii?Q?3g=3D=3D?=
Content-ID: <D8845A65B023A6499FA45DE654B68B8A@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR10MB3022.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a003eafe-fb69-4f86-d217-08dab154b093
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2022 22:04:12.3724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v4QOZZCWHKH3rt+5TkfsUcxzDmiqkwxtPHDhzkU7tp9Un5RVCag2HXxE8h3zcUSzNwkfZmQMhpD1ESa+Mb37zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR10MB5077
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-10-18_07,2022-10-18_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=590
 malwarescore=0 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210180124
X-Proofpoint-ORIG-GUID: _ktEm5eVXytTjZTlY7G82242btGNzO_W
X-Proofpoint-GUID: _ktEm5eVXytTjZTlY7G82242btGNzO_W
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: * Andrew Morton <akpm@linux-foundation.org> [221018 17:02]:
 > On Tue, 18 Oct 2022 23:45:39 +0800 kernel test robot <lkp@intel.com> wrote:
 > > > tree/branch: https://git.kernel.org/pub/scm/linux/kernel [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1okuhT-0007q3-Sc
X-Mailman-Approved-At: Tue, 18 Oct 2022 22:07:35 +0000
Subject: Re: [Jfs-discussion] [linux-next:master] BUILD REGRESSION
 4ca786ae6681b90b0ec3f4c55c89d12f835f8944
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "ntfs3@lists.linux.dev" <ntfs3@lists.linux.dev>,
 kernel test robot <lkp@intel.com>, "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-ext4@vger.kernel.org" <linux-ext4@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

* Andrew Morton <akpm@linux-foundation.org> [221018 17:02]:
> On Tue, 18 Oct 2022 23:45:39 +0800 kernel test robot <lkp@intel.com> wrote:
> 
> > tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > branch HEAD: 4ca786ae6681b90b0ec3f4c55c89d12f835f8944  Add linux-next specific files for 20221018
> > 
> > ...
> >
> > mm/mmap.c:802 __vma_adjust() error: uninitialized symbol 'next_next'.
> > 
> 
> The code's OK but I guess we should make this warning go away.

Agreed.  It took a while to understand that this was a suggested way of
fixing it and not the issue itself.  I'll send out something shortly.

> 
> --- a/mm/mmap.c~a
> +++ a/mm/mmap.c
> @@ -618,7 +618,8 @@ int __vma_adjust(struct vm_area_struct *
>  	struct vm_area_struct *expand)
>  {
>  	struct mm_struct *mm = vma->vm_mm;
> -	struct vm_area_struct *next_next, *next = find_vma(mm, vma->vm_end);
> +	struct vm_area_struct *next_next = NULL;	/* uninit var warning */
> +	struct vm_area_struct *next = find_vma(mm, vma->vm_end);
>  	struct vm_area_struct *orig_vma = vma;
>  	struct address_space *mapping = NULL;
>  	struct rb_root_cached *root = NULL;
> _
> 
> 

_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
