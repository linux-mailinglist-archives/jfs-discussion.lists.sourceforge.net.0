Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AABBD31BE8F
	for <lists+jfs-discussion@lfdr.de>; Mon, 15 Feb 2021 17:14:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lBgVr-0002xc-5k; Mon, 15 Feb 2021 16:14:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1lBgO8-0002bQ-AJ
 for jfs-discussion@lists.sourceforge.net; Mon, 15 Feb 2021 16:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Date:Message-ID:From:Subject:Cc:To:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W9l0GEKOrqcQMLP7SSohcgV5ej71N0BUPvDhvOlwiBs=; b=cQvbpJnE7ErjQJZgNbm2TZs1Y/
 PsC6mFIDSLep7LhjUUcvOY4QIcnqSCaMYVaRm9Znc7EeNn5bzklG9iO3fO8tR+hJV6Yd0QgC830uP
 s8Edo1lTxRbqYZgw777AnVIWLoEjqgiIh1zKaoRArJp504gdBZ7SSPQekwG+vu7jpYHI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Message-ID:From:
 Subject:Cc:To:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=W9l0GEKOrqcQMLP7SSohcgV5ej71N0BUPvDhvOlwiBs=; b=l
 Pd3vbURQnET5gcLCh9gvYeMrVDlBxeNl2Zol56aKjwPjCMpdVw/U3zFHRoQ1CPAOx4/OFyth9ZZ8H
 3tpKRoP0SE53hUbi21yd0qcd5qbJdQoIDAMlsK17uHD7Nh40oRD8kHWnCtXU0YV5GXEgWO/wqawm/
 lV45TDNFADX1JwFM=;
Received: from userp2130.oracle.com ([156.151.31.86])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lBgNi-009pV9-UT
 for jfs-discussion@lists.sourceforge.net; Mon, 15 Feb 2021 16:06:15 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11FFmstb014890;
 Mon, 15 Feb 2021 16:05:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : message-id : date : content-type : content-transfer-encoding :
 mime-version; s=corp-2020-01-29;
 bh=W9l0GEKOrqcQMLP7SSohcgV5ej71N0BUPvDhvOlwiBs=;
 b=zYXRVqotnNlBIY2b+Ilb7vad4HBxeIVwVgMNPHLXL1dznqS09lJR5W0N009qA82d3QYj
 tSeXkw+YWuhVIogyxGf5nLLPXp6yAp+JpkAXI8hzT8BhNlkoQuvpCjqrLf/0Fdl02Jbs
 xrjQGiw9p7uhfnpZSjpGX9KsqIp23Y7o31X3yk9iiWk9kxk/VH7sQMmKSj94iwnWid7H
 53vkiPTpwPECT2Qs5Ic16fDLStAdZ/39HVpHli7ufKUR1q04mWr+9l6cvVFtTQ4U5vOp
 Dg5kuSLLrpUUS9vWgpIh6sYkOZ3//HAP97dHKTDgEGldcw3bxYvpacNNEPmraDEx3E0d wg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 36p66qvfx5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Feb 2021 16:05:41 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11FFpSR0063493;
 Mon, 15 Feb 2021 16:05:41 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2047.outbound.protection.outlook.com [104.47.74.47])
 by userp3020.oracle.com with ESMTP id 36prhqhk43-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Feb 2021 16:05:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SvMR2PPWReQMEMqDmoTuXPRNiZdR/NBqTpGB3r9VdT9UyYJdXjicdLeXgGkWhHFhE6b8pIixpSGg9tfHrMuCs1TKnKC3bGDdE4fOv/EYQq+sygZ41hGVkiOTavxWjxuKX+AGn3ckZ3Wq4sDAnk5p74KE82YCkS7kCpnvUGkZJaRE4DKZdNox2wi5zGX/FsO8PZIiy+Fj98mDklcOAOHcTkuG/j5Uh/W6ShWXC6Zro66v95ovJq0heE3f7j8xlvhAjua2Am8w/ahEPNMngVwlrr8ZYSGnwfpIcU8B5DYvz3D2dRKu/UgbFl2G4uT7WGYc3nX05tH6DyO2XcSO4e3wjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W9l0GEKOrqcQMLP7SSohcgV5ej71N0BUPvDhvOlwiBs=;
 b=VolbabaYXKmMNaWn67Y9+Y9Xloa30s7sxBOWV/NwI50jS3omCvzhrdJ9x1KeaGeFNcy4U+li2oole7yOrPuTd3I2W416oGe5p0ekFJtohVFUGLWQ5vZQL6sY65qY5J+8UuVDTPdym3KM77db2+wahsrpEFG0e3TTI1HhV+Wt3N8pCt0ZDXtQ1sRbQ9PVvu4sWhn5KyHBOvDug7WFYM6B9cRf0Co35z/g0ka3R9Gt3sIuEIx9GORBAMun58yLDJ3WE/qmZTctwL8gdziaYOn0CiYp6mANZzxnfDXAiQxtLE2IuDLTqqkZV+jWo9kU9NRXo6h8X8fm1FINr9wF+lGELg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W9l0GEKOrqcQMLP7SSohcgV5ej71N0BUPvDhvOlwiBs=;
 b=fawH6gS/RzYnfLs3sey/e3fCZ0Sfp7kw7FUkW3PWjvppJ9F60VK2CogiM8XOftswAIaI4s85EibCuC96szGV+LKSfHl78v8qSyi+85ZKpvtrh7KgCmCBhHp8fVQINEgFkVKIXwu/0shdT97t8++CmgeC+JudGDbr754VPO15iHY=
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=oracle.com;
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH0PR10MB5098.namprd10.prod.outlook.com (2603:10b6:610:da::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Mon, 15 Feb
 2021 16:05:35 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac%7]) with mapi id 15.20.3846.039; Mon, 15 Feb 2021
 16:05:35 +0000
To: Linus Torvalds <torvalds@linux-foundation.org>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <4605002a-b275-1190-c56d-7d888aa770a0@oracle.com>
Date: Mon, 15 Feb 2021 10:05:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SA0PR11CA0019.namprd11.prod.outlook.com
 (2603:10b6:806:d3::24) To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SA0PR11CA0019.namprd11.prod.outlook.com (2603:10b6:806:d3::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3846.25 via Frontend Transport; Mon, 15 Feb 2021 16:05:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1a968300-a127-4ef0-f301-08d8d1cb8741
X-MS-TrafficTypeDiagnostic: CH0PR10MB5098:
X-Microsoft-Antispam-PRVS: <CH0PR10MB50985844649E7512D0C55ABD87889@CH0PR10MB5098.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:393;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l2W4cOjpfc225FyLdyz8CQISfER0xfkvZEH7xtwk0WAyy54UxeOrfduX2JmFpLr5mvyQkgrwdSwphEqi1Pxu6FR45lo1kQJGbYgAqxyKk9v4/G0gqz46cV05VraGJgKla7JPeM13irqKxTQFT7xnBaWfapAr8ikaKSt8it+XI9WJRy+R+ef6kJiTTv4Dnvx+ghsmKYcxZZngYLgf+M+Yl4hzSRbO34zfNfRhnOpyWgH9KzkrcqKHpP2J8QyWsB3FBo8v0NCusRrqkM5UlThkJqfQ7NdW+w/yrgqnktEOp5hg62QHi+prjTGKNoDfx1dIL0NvgwoB67aqK+oIv+88TgC5h8yYd3GGCd0/YYYpDd6TlEOa8tT+9Whi5rOYdkKORLlzznUnLLJGIXXA5h0vNzFh19Xt3GA5xPd98mecLJYwqoD376Mr29TnJAzqBLPqZvW3z7MyhRRVrLSXhin0U0c9VtI5Ai884aL+5ceRf7xzuU0xSoqyhlGufCNWDZg5GZhB/dqq5MH+gHR/LSiVhZ56AbbhFwT0GIUDk4N/cQzCXX51XEbgPRDe5IoC2H8rFiOx3euh0Bl3zq4vmnVLQKfKKQQjwu0OjQfhF+fIPe0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(346002)(376002)(136003)(396003)(66946007)(4326008)(8676002)(36756003)(4744005)(31686004)(5660300002)(66556008)(66476007)(83380400001)(16526019)(8936002)(4001150100001)(26005)(316002)(478600001)(6486002)(2616005)(956004)(2906002)(31696002)(186003)(44832011)(6916009)(86362001)(16576012)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?TkkxNEllUzlPVnRWY2VhSlJ5SDlwZTRLQ2JMUDVLYWxqMlllUzdwVTZqeVFK?=
 =?utf-8?B?U1ZQTExDZEk0K1BNK1BaeGhyUEM1Z1pqUXpNeHdOYnhvL1BJaU1EU2xta0l3?=
 =?utf-8?B?Q1JyaytlV3FIdDAzMitiQkU2aTdrS0crY0p3NGdZNjVPcnhiNkZPa29wSzRr?=
 =?utf-8?B?MTcyVjdEMGJ0bFZ6OTJQNU5xd05EWHFLdCtUOVh4Qm5jWTVIckk1RERXKzZ0?=
 =?utf-8?B?ck12VDJiQ2NMOFZqS3pSOXZLWERKcWxlL256OVd0MUNINlFMU0V1VElUSEJo?=
 =?utf-8?B?ZThjc09pelpVMVVIckZqTUNlMU1ZMnZmME9FYU5Xdmx6cTd3RUJHeDRrTjZq?=
 =?utf-8?B?WGZwTWovR3pGVkcrbnVJZVJNMVFVNkZNVWRBUkp4ckZSOE5hQ052WGRsUUFr?=
 =?utf-8?B?WXA4b0QvMmoyKzFibiswQlJhSHRTd2xZUTRiaWhoc1JoNUI0VkxsVW5CTytk?=
 =?utf-8?B?SEZhdUt4QlZ2cTFCVCtlYzFxR0xFZGtSazZDeVNBMWd5dmtCa1huUkdKL0Qw?=
 =?utf-8?B?TlBROGx5NzhXZjZZaEcycXlEZmo1WEhaZndtSDJRYzNBWk9VV28rOStDUjhQ?=
 =?utf-8?B?cmxMVFNGbVB6V01qVHMzSUptRDdpRGc0aHlRcGxTT3NUU1VSeW1Tdmw4S3FO?=
 =?utf-8?B?bDcwcEtmYkZnSEFhVHhOT3I4c29HVlJmbkpUQlJQV3lmVEJsWE54MVpYWmdR?=
 =?utf-8?B?NUVvbmIrdGdhZzhlZEVxY2J4Ynp4UW5XVWtCbWFPeWk5QjF5bEFCZHNIc0Vl?=
 =?utf-8?B?SUVnbHdUYTRMM2duMzY0enZkRnNxU2NnRlh1c3pGelZ4SWtTYkRaZnRIandZ?=
 =?utf-8?B?YzAwc1BMTTBUcndXaURoU3RFbjkyTjIyLzhDQkRnYWJ6ZE96NkpYeDVLVi9P?=
 =?utf-8?B?eW5VZHhqTGxUWW5aSzNaWEo5ajJlbDF0STFHemNGbWpRcVRPRUJiUlpJYnNX?=
 =?utf-8?B?MWpxOUIvcDFNUTM4czhtRnplWC9zSVdhSEc4TWRkaFpmVVkxdXFVNTlJYlJG?=
 =?utf-8?B?dFlKVVNpLzIzaEFJdHpBZHhLV3BWYm05NUh5ZUlRUW5vd0UxRlFqYkxBM2kw?=
 =?utf-8?B?TDM1REo4MzZCK0tWTFlORVhBNVFIUnN1ZnJSTUlKUXF1ZW9OWVNndVNmLzhE?=
 =?utf-8?B?RDllOWxqUXEzZ0hsVXJTWUlpODcyZkhjdTNFV1cvaXR1dDNMSFJteGRqakk2?=
 =?utf-8?B?aHVuOXJrM1JrR1VpUG1TWEUrZmsvVjNJYW1KSEp0dDJ1S29Ucm1JMnZZblkz?=
 =?utf-8?B?d3ZSZlhERDlOQjJ0NHBjVEtLbkVCSlBMelI3a2pZNmhaRVBodWQ4TEdXeFV4?=
 =?utf-8?B?ZDFkZzJ5VU40MEJOM0RqNUpvMUVQWmEvMEhVZGJFQWlyZDdKRUlrNkNuUWlt?=
 =?utf-8?B?MndiY0Y0YnkzTks3dk5Ra2g1dFNNRjlFNVV5NkI1akVlNFpsOVBlR2doQUNl?=
 =?utf-8?B?czU5VTR2eVBBK2tVR2VIM0NuK0RkWmtpaHEydUtKcVFNd0hTMUZmZXlQaW1T?=
 =?utf-8?B?ZnRMT2dzNll3TjVRS2tWUHZ3TUR6SGM4aUJTZnFpVVBiYU9BY2hmWDBHdDdP?=
 =?utf-8?B?RnBSZTgvSnc2dzYraVYyNTZKREtwTlJNNGJSQWd0YjNEQ3ZadUlPNTdhSGc2?=
 =?utf-8?B?NXJvbTl5aWE5ZDI3ejEyZ0krUk94c1BXWVRkaWthWjNWZ2Jjd2h2VGQ0MEp5?=
 =?utf-8?B?aVJoWDQ3M3VDMGxqZGwxRjVIcWZQNFQwcGxFVmcwcFd0aXVhS2RDS3FwVVdP?=
 =?utf-8?Q?MoIFU/IaCb4mpvCXPgi/cDX/5iJIHNhyWLUs8Ml?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a968300-a127-4ef0-f301-08d8d1cb8741
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2021 16:05:35.2141 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fj8ZmZP2y9AwNl8gO5JQJ/xxBiWEUNdtgFlS/P5iGgbpvOFDxvPKeMls3XmJjFvu73PLtr1kvyk1EJAcXQa8q9zPuzzGze6tRZBm7UL/hfM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5098
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9896
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=954
 adultscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102150125
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9896
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1011 spamscore=0 mlxscore=0
 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102150125
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBgNi-009pV9-UT
Subject: [Jfs-discussion] [GIT PULL] jfs updates for 5.12
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
 <jfs-discussion@lists.sourceforge.net>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The following changes since commit a0b96314870f7eff6d15a242cb162dfc46b3c284:

   Merge tag 'xfs-5.11-merge-4' of git://git.kernel.org/pub/scm/fs/xfs/xfs-linux (2020-12-18 12:50:18 -0800)

are available in the Git repository at:

   git://github.com/kleikamp/linux-shaggy.git tags/jfs-5.12

for you to fetch changes up to 4208c398aae4c2290864ba15c3dab7111f32bec1:

   fs/jfs: fix potential integer overflow on shift of a int (2021-02-11 11:25:54 -0600)

----------------------------------------------------------------
A few jfs fixes

----------------------------------------------------------------
Colin Ian King (1):
       fs/jfs: fix potential integer overflow on shift of a int

Randy Dunlap (1):
       JFS: more checks for invalid superblock

Yang Li (1):
       jfs: turn diLog(), dataLog() and txLog() into void functions

  fs/jfs/jfs_dmap.c   |  2 +-
  fs/jfs/jfs_filsys.h |  1 +
  fs/jfs/jfs_mount.c  | 10 ++++++++++
  fs/jfs/jfs_txnmgr.c | 35 ++++++++++++++++-------------------
  4 files changed, 28 insertions(+), 20 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
