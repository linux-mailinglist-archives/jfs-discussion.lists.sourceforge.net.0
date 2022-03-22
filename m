Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AF94E42F4
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Mar 2022 16:27:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nWgHU-00021C-3S; Tue, 22 Mar 2022 15:26:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <dave.kleikamp@oracle.com>) id 1nWgHT-000216-Ek
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Mar 2022 15:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7IO3eH4yzwt9VbSWKUylfUdDycFJPiL8COzwz7/7MbA=; b=l1h6hgJfnn49a2+oQT3Yw1cvIh
 MJw53jQ5XQ3A8TMKuhRFToTvkxFn/DZiSEQ3cMEeK49CT3VPqJyektXDN4B3HDEG5VfiG/5dJ9Q8Z
 Q5u9/JxWCTfiIc+bZGMJFiIrqbymKFiTZiqtvOyQerL+pwFOhVEbH/cb2rEhzj5P5rDo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7IO3eH4yzwt9VbSWKUylfUdDycFJPiL8COzwz7/7MbA=; b=b8t37FclJt+gVvGSOE65pls+Gd
 JrcZDb3MdKyBP02FA4DbmJV4ArMUv9iJTbfT9y3G8Ihqt3tPqj1f7/lnCYM1lUd5QUY2+5EdqyXAk
 jYl7VjBpzhagVtEvFYcFNSJfmRbuZRaoT0luhBHHmCixlIc9RbJE5htVBwOBbrxfqgjU=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nWgPH-008fwS-Rk
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Mar 2022 15:26:55 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 22MEbQVF022875; 
 Tue, 22 Mar 2022 15:26:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2021-07-09;
 bh=7IO3eH4yzwt9VbSWKUylfUdDycFJPiL8COzwz7/7MbA=;
 b=ItRpg6DN/YESVi4DenlAtKqwz5E7UbyRW0iVKqbGiVWC0k4cMIYKeQkcIa0SGSyNEqA/
 j4egT59F9AOjJuqDk98CWBxl+GhtEG/vboAIcOLFDfNZPZT2gbfOnpoMWAy0iEq15b4/
 Yimft2FkGAY0vjS5rqcVQ0KE+MYNY+ZTBXlA1pkgEh6wFDY4vOh+1ulT2w4HR3P72Acb
 8vzttVp2acZ/w8JpZpV7s5onFMIW1o+zeUFGW0zdz15WwFXK2c4VO8Hs5AZrkSxLRy6y
 Ea1KraSPq3yk8V4meOCHUUavP6CzohG/zfrDAWF4t1827kH6uuFkQyVdZPGL+vYJzLPy 6w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3ew5y1xtky-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 22 Mar 2022 15:26:37 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 22MFCCH3071526;
 Tue, 22 Mar 2022 15:26:36 GMT
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2174.outbound.protection.outlook.com [104.47.57.174])
 by userp3020.oracle.com with ESMTP id 3exawhn0fa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 22 Mar 2022 15:26:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SgVCddxbG2eb9CH8jRx4/ZWiZ8fE4FyeZPW/wQb8YTJgzhUuEYe+ysQHFUynLQ43cF6JJbxw4l0qGMdnMtDW3TxEPtUTlRWurE7Xo6Mo9O/+R8Exoc/tGxgK2uPqrKC5BR1vijlhkZmqEQn1HnA2DUwxoAJJPscCrlw+Ehmbypaw9FLZUAsm7wzWVem+8IHbPiDTL29N4nGl5Lik9+FGNBlk1mOaz04KirhcH72+FtCq8AVy9cZJsm/LRXauKVq2oj1VazAryZ7RlZ4bFy6d1bgFz8OobnReqaw0ibOGd9wVypVzf8YtO6bvMwf7PTpfqsGUtBOmI5X+k3P3Ydvyzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7IO3eH4yzwt9VbSWKUylfUdDycFJPiL8COzwz7/7MbA=;
 b=bhinUSboc0xJpw+8PAgsdb61V3VgsaD2rSQ76od2AxU/1WiKCuIb3kP9JuedclTXl8sxokGzcL7vhWQ/N/ym5NMr4v0zOTHB6vHwgnU1apAi5aCylIy6VZU4T4T6HRqGwhZOIPYNoa4V9eB3LVXcXL/FBVpwrU5/O7AOsBmwaPuSXj9qKt0cho0NUBqvT4uAS2tCWluK0LnnJHQM2CvsS3xI4ITPVR0zmFX+lrErVbqJY21JG/lvmKfRKAxQHptQMl321Rmo2GqYhpjzWbkwExSjVc8PQDyrlnayQEuUVzgjrL2x/qhZ5Ptax5hjTFY1vswVGVY6Q0w1d4zeGT04iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7IO3eH4yzwt9VbSWKUylfUdDycFJPiL8COzwz7/7MbA=;
 b=k0ZAKhN/fS3HHtMMPwSSUISPRCyFXjeWvFLnjoYE0vcxXSnYngHruoEMJuEseYzb5rJ5lfyzRD8cIn2lFXhrLK8/uXwrIhZb6VPmxRa511k0ZqpgZ2GxrLGCYXv8b9zrZorRM7mx1VPX1ZG0rg3OET/ILWKntKVxxu/M5zti2Hk=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by SA1PR10MB5711.namprd10.prod.outlook.com (2603:10b6:806:23e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.14; Tue, 22 Mar
 2022 15:26:31 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::7dcf:728e:946b:aea]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::7dcf:728e:946b:aea%7]) with mapi id 15.20.5081.023; Tue, 22 Mar 2022
 15:26:30 +0000
Message-ID: <7f79990c-6a7c-fb6d-eba3-ab9976fb8776@oracle.com>
Date: Tue, 22 Mar 2022 10:26:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Haimin Zhang <tcs.kernel@gmail.com>, Dave Kleikamp <shaggy@kernel.org>,
 jfs-discussion@lists.sourceforge.net
References: <20220322135917.81802-1-tcs.kernel@gmail.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <20220322135917.81802-1-tcs.kernel@gmail.com>
X-ClientProxiedBy: SN4PR0501CA0067.namprd05.prod.outlook.com
 (2603:10b6:803:41::44) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: caa158dd-2c0a-4960-20df-08da0c185702
X-MS-TrafficTypeDiagnostic: SA1PR10MB5711:EE_
X-Microsoft-Antispam-PRVS: <SA1PR10MB5711FE5F64719D94F2F94AD287179@SA1PR10MB5711.namprd10.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IGCRpj+AGpPV8a4BAEMbBsHYDH0W1oa1IasRFKMhxsUP5WY3tDVDqrULjLRp1/gif9modE185+mIbyKQy7mXXB5IHkBKuEj3flAIN2UP3+MriKtM+Wo4JZ3XIe7ruDLZZWHkY9uynnADJCZjHO725F5uwFb5mywNYaS1QmhKUcuQAAM2vbtOq46woURqWVdPudaofNqns8zsRT5rNV79pG3xZ4b3i+S7jw34V5xUjASc2m1yi10wKT4ZOCDqQxYyBtVM8BvShGquxr59gf6if7gyX736JYnSHYOVSrmKPpLpomuDE01GDXfuZ0bTIQy26f2rMVs1h983011/XfG4ZB9/Z6lP19dapYuFJualHm+eCtPv6HNGB74KMFLaCbi7z4fKNXq77FaNB+L0lenmkHZyaWk0uTsszYYoGoE/mIItFQ/DvteAPjAO3hN8qikyu/knx6FE/i5yfHYWtA9FBptce+8iEqiZSG5Dj2e4Odm81SqFyssza1dKtEDvGAKkl6fZgpZJ5N6tYMtww0vXIqX8NoT8SIAIfVgXyZjkZ4c843r25RULsSNFNT3DlRDXVtfyDHXpVdiddIM/JyzTl1RUI94kvDZP0P0rnR5pojd6Wrv8HeFAOwl3GkyHqMa96bWwRaaeugDTrHPk3D0poR7NYdd+KNMMl2HHKmnJ5M+fDAhTyfQgGAYQn53+zwzDE2JIKSBrpD1aaE5knlG0b2eG6bxHq6LjR9aXwDY1Dcwmi7kVTWjXFczf4EPBwbUf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66946007)(316002)(86362001)(83380400001)(66556008)(38100700002)(66476007)(31696002)(186003)(110136005)(26005)(5660300002)(4326008)(8676002)(2616005)(54906003)(31686004)(6512007)(6506007)(2906002)(8936002)(36756003)(44832011)(508600001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3NrL29BY0VWRWx0VzNYbWZKTEQwZ2ZqZkxXTXNTeDFhS0RGU1J4N3htS0hN?=
 =?utf-8?B?dHkxSk5lcGw2ZTNkL29naFo1ckdqSmFEU2pQU0pjK2tVTC9CZEVyZXZGdWVq?=
 =?utf-8?B?RWNQdlM3QlBBb2U1a2g5KzFaVXdNOW0wQ0t1dlRuMmFxQUZ2cDk4OE5kSU1h?=
 =?utf-8?B?VlFvUWp3Y0Urc0t2cmxwenFTaEN6ekJlblAyMk9EWnY3Z01MRnpjYlRBdHRx?=
 =?utf-8?B?Z29VUlNubHM5VXljS2pyVGRyNmkvbFF5cFhpS2t0MksvZzlYblVsOXhNTThu?=
 =?utf-8?B?czlGR0krTlpXdnZNTXFiV2pvdWNkWTJsZE9yYytGTGRIS1c5ZXkyMlkyR2xk?=
 =?utf-8?B?R0JZcjMya0NKaXhUZWphaC9TNG4wNy80TnBTb1dzTDRFMDJXbGRYTkFiQm8x?=
 =?utf-8?B?N0ZwSFJjOU5aVUZteGtvWGxmbHdGR1F3Skg4clNTaEdTVmlOVmJFWUdKcm1k?=
 =?utf-8?B?RWgxZDdZR3dGM2JGcG4wWE5Yb0J6bG13Um1CSTRheEN2SE85dWdpeXVYZlJL?=
 =?utf-8?B?ZVo2UDlwc0dCbXBuR21ORTkydlZFQU9iRmhMZ2I0VDF5T05PUENyeWZCenZ6?=
 =?utf-8?B?RXlzMDdNNkV3RWxTTzNTVEhhOEpES0JZM09xWEhOVTQ0UlRWTEZ2cjY1eEhY?=
 =?utf-8?B?dWtTK21MUmsvb3hBcGxCUzJPbWxPUkkyS0F5OUE5SXkveDJoSEdua3ZpV3Fv?=
 =?utf-8?B?dE8xR2dKRE9KMi8yaVU5S05Lc3N1V1IyWFpsZlcreXJWNUxMbmpxRnVSdlhh?=
 =?utf-8?B?bU16YUszd3FoRjcyMHFXNWR3bFZ0R1h6SHdLM3E0cGZwRUZLSEpNSzZWRVJS?=
 =?utf-8?B?b2Q2b1k5OXVCeER3RjhlSWJ1NU9mWEZvd2J0LzBIT1g0dVhGR3R1anl1UStq?=
 =?utf-8?B?OE9rWEZFZzd6Q3Bwa2Zpdng5d09KWU1WY0ltai9LSzhPMFM5aXg3ckZJV0x6?=
 =?utf-8?B?TUNab3J1aFdTTUtKQ1FhaW95ek9QbU90SS9MSE5tV2p3a0xsTTdJZHRkS2V6?=
 =?utf-8?B?V2RRU1VnLzBxN0d6NXJEZWpxSUNlb0s0UWVZL0lDQlRWWi9QamtZSUN5Y2VM?=
 =?utf-8?B?UXpKUWxCTDJxbG9obGZiWjdTVFR4OGIxdVVNVnRrdkZvL09yV2tkT3duQUoy?=
 =?utf-8?B?eXU1U1ZCMzlWckFJTS9CVUs1VDlqV0gvcHV5Ui8rWkkwT3hlT2UyemFzalF0?=
 =?utf-8?B?UjZGZ3VyZEJacE5hQ0dRRWZhWnorQUh0c2YwRnE5ODFIbzcxL3A5bGtEYjhB?=
 =?utf-8?B?UThyY2lFRU04SlRBcXNSNEdIN1BuR2xIRnNyWExNdEJqSXVHZ3MxWEJ0VEky?=
 =?utf-8?B?dnAyY2pKcUNxVW9aWDE0a21jRnpyeE42cm0yODVCKzJIV0tjTGovcGpmeVF4?=
 =?utf-8?B?V1UxMk4xbkxYU0F2VnJKQ0djMUxyMW5wWUNEYnBsVGRUSkRtQVoxc0RnUXBY?=
 =?utf-8?B?a3M0VGJUUjhrTFQ5WThsYmRKV29kVnN4WE9CWDRaVWRXenJ4S1diamV6SHJa?=
 =?utf-8?B?ZHBXaVhqN1QweTdyMGN3Q3NKZkk5cXhNQXI4bnNpQzNPL3p3WjRVdlU3TUR3?=
 =?utf-8?B?NnVDaTBOclpBdUNVTzBrams1ZjFLaFkvREFjbDJGNFJMeWRsTkxYbUMzVWJU?=
 =?utf-8?B?NDNhbHZhaFduaWl2WFIwdUJJOEk0V3V1Q2dsU1BrZkM2K1kwV3J4ZStCbnNZ?=
 =?utf-8?B?dWtLUkVGS1ROcWx1VUNyRW9rVkcwVlk4MXRMYndLOVhKWjQ0QXRDMTVGNU1O?=
 =?utf-8?B?ZFpLaDdmR2x5SGllTFhnTUtvNzJqZnhrVEdXRTBLZjFDc3Z5NmY1dzBkQUw2?=
 =?utf-8?B?R0VZVWVNQnAvMWN2UXVtUmt3VHJscGVEK2Z3NTNXRENHaUhSR0YzVXR3cm9z?=
 =?utf-8?B?SVZ0dHlOSXhsbEhVV3dlSzZzbDl0UmdmSnU4OWJpcWVGaDJGdmF2dDVsak51?=
 =?utf-8?B?eG9VUEdqaHRYbWgzOG83STg2eGZKZVI0TkIxSVowVDZwejA3T1QvbTBhSFQ0?=
 =?utf-8?B?amhyb2NIZ2hnPT0=?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: caa158dd-2c0a-4960-20df-08da0c185702
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2022 15:26:30.6101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ymqJUrOYk+RyuDfQ3LnmGX5I4jrmU/P/6KwOA/aHOUEVRENzl7B1UpdP6Ud8YglhMAWMAAK4+I7Jsje/LFmSLaUjeVd1MgREpaym7MESfcA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR10MB5711
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10294
 signatures=694350
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0
 mlxlogscore=589 adultscore=0 suspectscore=0 malwarescore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203220088
X-Proofpoint-GUID: -dEKPtnQi3w5V_xx7Chwx8FYEpcOIwIE
X-Proofpoint-ORIG-GUID: -dEKPtnQi3w5V_xx7Chwx8FYEpcOIwIE
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Looks good. Thank you. I'll push this for 5.18. Shaggy On
 3/22/22 8:59AM,
 Haimin Zhang wrote: > From: Haimin Zhang <tcs_kernel@tencent.com>
 > > Add validation check for JFS_IP(ipimap)->i_imap to prevent a NULL deref
 > in diFree since diFree uses it withou [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nWgPH-008fwS-Rk
Subject: Re: [Jfs-discussion] [PATCH] jfs: prevent NULL deref in diFree
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
Cc: TCS Robot <tcs_robot@tencent.com>, Haimin Zhang <tcs_kernel@tencent.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Looks good. Thank you. I'll push this for 5.18.

Shaggy

On 3/22/22 8:59AM, Haimin Zhang wrote:
> From: Haimin Zhang <tcs_kernel@tencent.com>
> 
> Add validation check for JFS_IP(ipimap)->i_imap to prevent a NULL deref
> in diFree since diFree uses it without do any validations.
> When function jfs_mount calls diMount to initialize fileset inode
> allocation map, it can fail and JFS_IP(ipimap)->i_imap hasn't be
> initialized. Then it calls diFreeSpecial to close fileset inode allocation
> map inode and it will flow into jfs_evict_inode. Function jfs_evict_inode
> just validates JFS_SBI(inode->i_sb)->ipimap, then calls diFree. diFree use
> JFS_IP(ipimap)->i_imap directly, then it will cause a NULL deref.
> 
> Reported-by: TCS Robot <tcs_robot@tencent.com>
> Signed-off-by: Haimin Zhang <tcs_kernel@tencent.com>
> ---
> The following is the crash information:
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000004
> #PF: supervisor read access in kernel mode
> #PF: error_code(0x0000) - not-present page
> PGD 162c13067 P4D 162c13067 PUD 15f0f4067 PMD 0
> Oops: 0000 [#1] PREEMPT SMP
> CPU: 0 PID: 6659 Comm: syz-executor348 Not tainted 5.17.0-rc4+ #5
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS rel-1.15.0-0-g2dd4b9b3f840-prebuilt.qemu.org 04/01/2014
> RIP: 0010:diFree+0x1d1/0x4330 build/../fs/jfs/jfs_imap.c:871
> Code: 74 24 18 49 c1 ee 0c 4c 8b 64 24 78 49 c1 ec 0c 4c 89 7c 24 50 49 8d 5f 04 4c 89 ac 24 98 00 00 00 4d 85 ed 0f 85 f7 05 00 00 <8b> 03 89 44 24 10 48 89 9c 24 88 00 00 00 48 89 df e8 89 2e 43 fe
> RSP: 0018:ffff88815f3db330 EFLAGS: 00010246
> RAX: ffff88815efdb550 RBX: 0000000000000004 RCX: 0000000000000006
> RDX: 000000015efdb550 RSI: 0000000006dc3470 RDI: ffffea000000000f
> RBP: ffff88815f3db5b0 R08: 0000000000000001 R09: ffff88815ebdb550
> R10: 00000000000e99a8 R11: 00000000ffffff00 R12: 0000000000000000
> R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
> FS:  00007fc266560740(0000) GS:ffff88813fc00000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000004 CR3: 000000015875f000 CR4: 0000000000750ef0
> DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> PKRU: 55555554
> Call Trace:
>   <TASK>
>   jfs_evict_inode+0x605/0x6b0 build/../fs/jfs/inode.c:155
>   evict+0x4f4/0xdd0 build/../fs/inode.c:664
>   iput_final build/../fs/inode.c:1744 [inline]
>   iput+0xc53/0x1100 build/../fs/inode.c:1770
>   diFreeSpecial+0xec/0x1b0 build/../fs/jfs/jfs_imap.c:548
>   jfs_mount+0xd1c/0x12c0 build/../fs/jfs/jfs_mount.c:191
>   jfs_fill_super+0x76d/0x1670 build/../fs/jfs/super.c:560
>   mount_bdev+0x626/0x920 build/../fs/super.c:1367
>   jfs_do_mount+0xc9/0xe0 build/../fs/jfs/super.c:674
>   legacy_get_tree+0x163/0x2e0 build/../fs/fs_context.c:610
>   vfs_get_tree+0xd8/0x5d0 build/../fs/super.c:1497
>   do_new_mount+0x7b5/0x16f0 build/../fs/namespace.c:2994
>   path_mount+0x100d/0x27a0 build/../fs/namespace.c:3324
>   do_mount build/../fs/namespace.c:3337 [inline]
>   __do_sys_mount build/../fs/namespace.c:3545 [inline]
>   __se_sys_mount+0x8a8/0x9d0 build/../fs/namespace.c:3522
>   __x64_sys_mount+0x15d/0x1b0 build/../fs/namespace.c:3522
>   do_syscall_x64 build/../arch/x86/entry/common.c:51 [inline]
>   do_syscall_64+0x54/0xd0 build/../arch/x86/entry/common.c:82
>   entry_SYSCALL_64_after_hwframe+0x44/0xae
> 
> 
>   fs/jfs/inode.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
> index 57ab424c05ff..072821b50ab9 100644
> --- a/fs/jfs/inode.c
> +++ b/fs/jfs/inode.c
> @@ -146,12 +146,13 @@ void jfs_evict_inode(struct inode *inode)
>   		dquot_initialize(inode);
>   
>   		if (JFS_IP(inode)->fileset == FILESYSTEM_I) {
> +			struct inode *ipimap = JFS_SBI(inode->i_sb)->ipimap;
>   			truncate_inode_pages_final(&inode->i_data);
>   
>   			if (test_cflag(COMMIT_Freewmap, inode))
>   				jfs_free_zero_link(inode);
>   
> -			if (JFS_SBI(inode->i_sb)->ipimap)
> +			if (ipimap && JFS_IP(ipimap)->i_imap)
>   				diFree(inode);
>   
>   			/*


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
