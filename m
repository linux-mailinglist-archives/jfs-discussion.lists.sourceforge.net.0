Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F38630FFE5
	for <lists+jfs-discussion@lfdr.de>; Thu,  4 Feb 2021 23:08:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l7mnV-0003ot-Jc; Thu, 04 Feb 2021 22:08:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1l7mnP-0003o0-4N
 for jfs-discussion@lists.sourceforge.net; Thu, 04 Feb 2021 22:08:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aV4kH+UA7pOMvhXNXwBqgLamuIdcc58m6NFTgaf7xek=; b=dpTR6dzubPCWpW+tzVXF+gkx92
 5t3b6Xjdj+cCN7wHfBWQOdKGgQagqvtriGz8ifrOaY2wCUJO9BuuC8gSSTD/mAeheS9YoONZZG9Ki
 0JuxlDQO6RZ0k61CEKlN7JFin47wv24qEGiAsAmUD5TDXOM8uZjodk4gKKgfGZ4YY8Q8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aV4kH+UA7pOMvhXNXwBqgLamuIdcc58m6NFTgaf7xek=; b=IlAXWWqnY8ff4ABriic0jlEDfx
 E8pKC9iPCIO4QK/d7Rxmri41BU0ILGvjQegUmvIVdrLOqwpuU4exkxhiCTxpBb0dMHxWUDmWagpPS
 7ryCitsuAAMvf4LTu5+wox1Qj+HzvnADl9GpobIHqGk8veoI+KuMu4b8WXqIInoton5A=;
Received: from userp2130.oracle.com ([156.151.31.86])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l7mnB-0005Pg-7K
 for jfs-discussion@lists.sourceforge.net; Thu, 04 Feb 2021 22:08:15 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 114LolO3152124;
 Thu, 4 Feb 2021 22:07:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=aV4kH+UA7pOMvhXNXwBqgLamuIdcc58m6NFTgaf7xek=;
 b=luq6J3pWmoYzuFkD5dSlbZvuxAwCYE3ktbKuWgcH8or1M+YG0NqHx8Yy2MOh6Z4acNda
 SPuEW5hPNOJ1djoWe0mAh1apKELokykr560VzkL9ubL9Baoq2OrkG8P+x+UAeO5gvP7O
 G+SCvPbcIGvSfkn6JmkKpJTRiDXlPBTM4F1Hgq+R3DiJjS+DUPuLVAZfu4/2Q7BTsjZl
 f1JMLGX19ocSOB4Erlgr5vopvzMH10/ilaT9tfi6Nxow5AdZAtmffIbhtqz7ZvCsmASw
 B6aS3uEGxmqKWOZa30d7oSUszcruj+ys8zsR7M6QhYzqdFwo8YJJOYqL5BFXHJQjzxld Vg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 36cxvra555-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 04 Feb 2021 22:07:49 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 114Lp823050496;
 Thu, 4 Feb 2021 22:07:48 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2175.outbound.protection.outlook.com [104.47.59.175])
 by aserp3020.oracle.com with ESMTP id 36dhc39e3u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 04 Feb 2021 22:07:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bit6vVzXUOUG5qhOKxCp6v9YAoUcLlzKL+NXqtLgdGz/siyCjbzYcDu507v0JI96JP4dXCQOAd7oS0zU5JoUCX8rBaQVNgk0gEbtYTaPKZxZol8Y0AY7UyiSHUXD2vQNaZ+pQYsShUMbpBT+VpT3vbF+Ds28ZfMePX3Iq+exVkCf0bzMNLxG7qgX1SIKd5kdXUAa0o1v2tAZ6z2gXbQ3gyaddgIQjUVCjAr5Z/d9zEJAJWHu8uTkcTWWRp1XvmlIsjF9eYtLLEnT7lx8/X4tfyXG6F8+ntEsFwQyL8HjVnBvgpMLHoDH85nIAzI+UrxxNimNMppGas9ksNJGywv64g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aV4kH+UA7pOMvhXNXwBqgLamuIdcc58m6NFTgaf7xek=;
 b=N9DIE3K25gUBIqCEVy9+9ImuzkpbPGNflC0w6glZX7yGc0ZXT5hTXmfIW6epsFtfvuylwLDWiSQTcb9WKXInhI6d7c8b4CZtTMDOKuG3LrGndLE4FfLMvmmJjZtfoLOnOr9zf8ZvorpbAylsTCt5vf58wNDeb8qZTwZryshvPF3zsOLFGIi9+VZ5XZQ9r50q0tpXK0brUs3+y/DKdoC/INpV2QUe9owYsIzOhOrhHhQoG77SnA9V9zXS9uUKDAPXskQD0yeXfpl9GTUBeODjbufWrr7Peo9+lh/UTgc3wMYs769WiI2HlCd3+W5QRpLT/CWgFbTge4NOCQPHwcbSWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aV4kH+UA7pOMvhXNXwBqgLamuIdcc58m6NFTgaf7xek=;
 b=O8OiEn+O4mXKRiqOYGJzwa/1JgFb1rV9tHLsaQgaqAyClMrfw2EfDucuaagzORqgAXjUGofFw18CLWVoWal3UmPuitAwO66vqYT+uy6wj7yR2kVIfISJHZWhEfrUr++7m7G67c3LQJVB32XR/90SSvG+AY6mrh4QfGwbN2KqwJI=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=oracle.com; 
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH0PR10MB5321.namprd10.prod.outlook.com (2603:10b6:610:c9::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.20; Thu, 4 Feb
 2021 22:07:47 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac%7]) with mapi id 15.20.3825.020; Thu, 4 Feb 2021
 22:07:47 +0000
To: Yang Li <yang.lee@linux.alibaba.com>
References: <1612409974-63355-1-git-send-email-yang.lee@linux.alibaba.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <2ddb278d-22c9-e1e0-9d56-d132192620c5@oracle.com>
Date: Thu, 4 Feb 2021 16:07:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
In-Reply-To: <1612409974-63355-1-git-send-email-yang.lee@linux.alibaba.com>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SN7PR04CA0053.namprd04.prod.outlook.com
 (2603:10b6:806:120::28) To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SN7PR04CA0053.namprd04.prod.outlook.com (2603:10b6:806:120::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.17 via Frontend
 Transport; Thu, 4 Feb 2021 22:07:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86c43db9-166a-4115-871e-08d8c9594dc6
X-MS-TrafficTypeDiagnostic: CH0PR10MB5321:
X-Microsoft-Antispam-PRVS: <CH0PR10MB53212DD963A6C7630F3E95CB87B39@CH0PR10MB5321.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:159;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6O5urlGI5LTGjjcY/U/dZeVWG6edyCqLG6bdKPEZc2+EBBMjea/imvziTCwevR6FUvj37xzqaWk9lhi6M3vxtKpapERCVQ0HMye3p/LM1T+Aw0dXWxmL/FJr9mT8HBpN5uOZZzAow0HZMA05JVhH0pmbGj6QCSva8+zHB1CagOWjDpvaBwxzDT2TANdeqm+v1vzpMa2QEHsroKWBhJVDhSx97bA5HEhvmDKLv70YCnlFIbj2m/ZlIvRWTZau1g5ZTJuFnuCCmV5mMbH0sPriaA8UCWchALKgwLNO5Id9iFD3K4JBfAsuhJkC0gsC4b27Omeg6asIp3qet/fjwLxeIND418GStmbpQTxx4SV+DB38R+9RcEmSZhZQUibnR/ijGI9e4MAMuylbJhRVOIWtt57qMPw/V9UDcVFP/kWMjqUY6CZMd3oAmA/CSbRFthoXlSzygvYVP2QkOzcDmAEa0vfs5kM5GGIEFp6z+53oN/yo6m0fPSVF5PCe0KqrhYAiEuamaAYZjTcjfj1awzI/0oIPmmJ1SOnKBqCO7lcjhEilxj1Ysr5hKKMZfDdjD6YKAcCZZingWC+7ZNLH+lgbVcdiKqAVzz4AdFnAj6w3dQc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(346002)(39860400002)(136003)(376002)(2906002)(2616005)(956004)(44832011)(8676002)(86362001)(36756003)(31696002)(6486002)(53546011)(186003)(16526019)(83380400001)(26005)(316002)(16576012)(5660300002)(478600001)(4326008)(31686004)(6916009)(8936002)(66556008)(66476007)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?aFMxdmFFQnM5RkhJbys4Sy83Unp5T2FqVDBjeDJFb2ZlVmJ0U3c0bnQxc0JL?=
 =?utf-8?B?OTVwTnBPWEFIbzhBeHBCY24rcVlGaytPdTR6MnBhbU5uU2tQSVl5VjFMKzFR?=
 =?utf-8?B?Uk1NcjV5bklKaW9wclRuUzlpU3o4TUEzU3ZhUXRESHJ0amhWOGdTMXo1WTJF?=
 =?utf-8?B?QmRWdGhjRTM1WGo4Ry9IVFRnZ29ISVVmMTdVbkxvWXhjTS9FVUVUeDNQQ2F0?=
 =?utf-8?B?S25YV05EcnpwemtIa25jb0lLZmcrR28vWjFPOS9uc0RKdnVleUZ0RUVPZFM2?=
 =?utf-8?B?NmRZNk9nS1FmT29ESGloQ1k2OG1PMFZHZ3ZpTlBMUzNZYTZWWmhLYUxjS0hq?=
 =?utf-8?B?ZlFaOTdKeFRzVXBPaUZrNmVUSk16eGE4cUhsTllXbGhxMWtwa2tFUUw5UTJ0?=
 =?utf-8?B?Zy9Db0dXNE56VTliL0ozRmZiSHlxRHdCNy9lcHU2MEF4bW1BdjZacnA4WFBU?=
 =?utf-8?B?SGxEelp3cnQ3RDdCbnBKV0xvUnYwM2k5d3hhMWUyTEx4eDhpT3Jic2VXalpC?=
 =?utf-8?B?enRuVUVlWERYWnF2cWNxNDlYbTFIY21uQUR3ajVvRW9ZK1J2RDJKVG1tcnpv?=
 =?utf-8?B?QmNTVXdhZDZLOVZUV0lJeVNiZXhXN1ljOHlnblRBUW0xU1lVb25xaFpqYTRC?=
 =?utf-8?B?Q2FVSzZnTEoyNEVSaEdmeVMyRkpuNmR2N2lHWkxZQWdzdFQ5NXBCWTl6eEpr?=
 =?utf-8?B?T3dVZlJoRUhVbWtnYVFhclIxQXdnQTlDdFVFSUphdFI2MWRkVHMxU250ZGRL?=
 =?utf-8?B?czNjNDR3YkNlVFlNSjQvVm5VMnNyVnRRQjlud212Ni9jN3NjUlUrTmw5Y0RI?=
 =?utf-8?B?OHBrWGxTdVk1WllvbjRtTmxkY3FBTExCRzlRVjNacTExZmU5UmhnWnZZYmY0?=
 =?utf-8?B?QmZubDRTUno0MGxIeEJpQjFtNzVRTlpTcFZEelNhbW9ESDFrZ1FFMW9BMWJ3?=
 =?utf-8?B?OEtKd0F0L1dBVDZVNmQ3QVBLQ2dzVkt6U09lRnd2STVZRFVnV2RwQnpvblRw?=
 =?utf-8?B?ajlSK0NlWE9ob0cvVU1xODVGY3NyM2cweW1Xd2Qzdm82b2FZcDU1dXB0ZVpZ?=
 =?utf-8?B?UWRubEs0RGRwbGozbEJHalhUcTByempjWkxyeVB6RFNoVXNFK3hpQkdSdTZX?=
 =?utf-8?B?Y25vaUIvSUlZRlJJR3FDd1poZEdtTURZWjBpNnRXWUJnQ2VzLzJ0K0YxRmUx?=
 =?utf-8?B?UXBWS2FyK1Z6Vk1YTTF0bkRxeEFNaCtaemxEVUlTaXNKTjU2ck9SSkxHMElk?=
 =?utf-8?B?N3c2czUyeFFtSlBhcXNxZGEwWG8vcDVVSGNmczJlRXgvMVdxYmVrR2ZrM0Va?=
 =?utf-8?B?UkFQYm9hUjV3ZVIrTjRMWkhrcWR5dW9uUm1ESlllSnI2aVhnMHlsR2s2Vk5s?=
 =?utf-8?B?TXFGQUNyQ0d6VHpFSkY0Tjg3V1pENGNEaGdxL0FRRUN4UndGZFYxQ05IQlF5?=
 =?utf-8?Q?oZCjMbN6?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86c43db9-166a-4115-871e-08d8c9594dc6
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2021 22:07:47.0379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l+tjxq1XeaItF/mNFoP0aXslYHtTagWI9MSOCO/GJnKvGpMOw3CTQf84W7Qfeb/9rDUvW0RmPUdVt5ayDcIWRMvS7Hg5QdjttVz6F/086NE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR10MB5321
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9885
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=0
 spamscore=0 mlxscore=0 malwarescore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102040133
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9885
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 mlxscore=0 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1011
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102040133
X-Spam-Score: -0.3 (/)
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
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.2 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1l7mnB-0005Pg-7K
Subject: Re: [Jfs-discussion] [PATCH] jfs: Remove unneeded return variable
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
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/3/21 9:39 PM, Yang Li wrote:
> This patch removes unneeded return variables, using only
> '0' instead.
> It fixes the following warning detected by coccinelle:
> ./fs/jfs/jfs_txnmgr.c:1370:5-7: Unneeded variable: "rc". Return "0" on
> line 1417

Looks good. I wonder if we should take it a step further and turn 
diLog(), dataLog() and txLog() into void functions.

Shaggy

> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>   fs/jfs/jfs_txnmgr.c | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
> index dca8edd..87ef2a2 100644
> --- a/fs/jfs/jfs_txnmgr.c
> +++ b/fs/jfs/jfs_txnmgr.c
> @@ -1367,7 +1367,6 @@ int txCommit(tid_t tid,		/* transaction identifier */
>    */
>   static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
>   {
> -	int rc = 0;
>   	struct inode *ip;
>   	lid_t lid;
>   	struct tlock *tlck;
> @@ -1414,7 +1413,7 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
>   		}
>   	}
>   
> -	return rc;
> +	return 0;
>   }
>   
>   /*
> @@ -1425,7 +1424,6 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
>   static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
>   		 struct tlock * tlck, struct commit * cd)
>   {
> -	int rc = 0;
>   	struct metapage *mp;
>   	pxd_t *pxd;
>   	struct pxd_lock *pxdlock;
> @@ -1527,7 +1525,7 @@ static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
>   	}
>   #endif				/* _JFS_WIP */
>   
> -	return rc;
> +	return 0;
>   }
>   
>   /*
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
