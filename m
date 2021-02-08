Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BE6313604
	for <lists+jfs-discussion@lfdr.de>; Mon,  8 Feb 2021 16:06:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l986f-00069a-LU; Mon, 08 Feb 2021 15:05:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1l986e-00069S-8E
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Feb 2021 15:05:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x9ZKdrD/glni9CAOHfNRpMwZqxKzvW4WFV3X6bXHPYo=; b=H7W9s5GVxxf0ULFpOR8wIfgjhf
 SEr5Y4D8pcQT3hkfzMFUy/wM2xppPyNeM/vz4uStl8lI40IkD/x04vdiGnRVj+4KM3n1BAI/RY3rF
 Gs3sR5g1+ePHctiz+9T0NAVn9UxrQODYF+3TNk2CkAXKY2HJyYzKjmS73TyhwL33ROxU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=x9ZKdrD/glni9CAOHfNRpMwZqxKzvW4WFV3X6bXHPYo=; b=RpbFwU+jQn6y8sPO6zgNiLevfN
 edMiLIkFqIvXHYagSMiPBBRWa8PJkyVRwfflUg5BxwgcfW3IzhIsCXSfcxX7df1MRTLoaBCFSoSOE
 ZRIkF9MElN/BZY7mWZL6cDw5MmQtSpkJI2p0MpC9Qh2PP2jAmV0/v4WSgxC1DZx++0Bs=;
Received: from aserp2120.oracle.com ([141.146.126.78])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l986V-0004Od-9b
 for jfs-discussion@lists.sourceforge.net; Mon, 08 Feb 2021 15:05:40 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 118ExHZJ031512;
 Mon, 8 Feb 2021 15:05:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=x9ZKdrD/glni9CAOHfNRpMwZqxKzvW4WFV3X6bXHPYo=;
 b=B13PZ1oM5Z4hAmEq04modT+wDezu1MTO/MDYtl3CDoynDW4674+2e7eoGxKWtPHWlsMS
 +dN+QIwSOrx+MjA55ktyOz4SEFuGXiM+SZKr4eE2/m6g+hdo8PGfNTDHRO4jCFXC5J14
 SUGIFK0LnMC8JAeVYvjwTULxRAnsgVibWeZzN5sjD3Y4NMLEqq5tKCMeG4lh07KNmpXO
 z/hAUurvn8v1/8Rm3siF6C3MCuwZ2Yy7OHCnm4mTsAh65At0Oi2HXl4987ShBpZKBwY3
 c70nZ82Z8fRaojURYXsTpfqNHuWT9A6FYspL0oOGdNvOCxRfjnS+YWAL3P/P8lZ+rvis Jw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 36hk2kc623-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Feb 2021 15:05:17 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 118F0wQO120203;
 Mon, 8 Feb 2021 15:05:16 GMT
Received: from nam04-co1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2054.outbound.protection.outlook.com [104.47.45.54])
 by userp3030.oracle.com with ESMTP id 36j51ure4d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 08 Feb 2021 15:05:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XjE/8HL13ACMIY5EmVHelc3mharR7wrs3zsWQRI289lRJq+mGGXiSuJmK8jRH68vVHcTmuN4lQITrdPCo3GUjGLmdv/VqkIDMCn8eMfzQLnBrdpbmVtECJiZ59+O6+t9ju31EI7VGh+i7FvwQV0NhcrgbQKqQSjXUiNykOtE5yh0ak5EIJLBlPaNxjI84r9BbYTMYqTNwxLujOlKb7ePn+FDTG8lyfw7Wi6cvUrQeSy4LurkLd1Y5qSOQVqqGLvCADQ+zgRwYq6RdsyZpHItAGjqRrXDEby8iHyEC3JNKldJFOcFg1e6EFMjh3BCd4UtaYRSu8TC4Xv7o9d0UZ4gig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x9ZKdrD/glni9CAOHfNRpMwZqxKzvW4WFV3X6bXHPYo=;
 b=Qg7eXpfmBno2z7auOcIkyUCqorvTxUk5JfSUaXyNiuaNQDZvIbbqhLX70L8GGg17A0xUHLX5SJ7S/DhrCWZw3toJKrKIRMsjekAHvK4wJklGp9MDQsEW6seNde6jQCBrfLvIyZ+1mNmGkLEM64Fe+XOZoTCuC4NnpHq1xxMUaMABHGBg3iw1kdeQAyRsVA2QQPpCrUmwy63XPOpe6027G0/fq9wWValQgDvRZkA32lWMT3zYT2yIahvOz8zkk6672MZhfTeO/t5xiWr0lA/Z00kR0bQQ+sX6bZUZsatmL+amnq3FDSI/U21yU73fhZiLUXF+eH/0G4yW443i7nXWvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x9ZKdrD/glni9CAOHfNRpMwZqxKzvW4WFV3X6bXHPYo=;
 b=bz4nohRf84ZnufPvVwVKJ4Q0RVYHVxX1Ud/HcEtifwAh5WK6Vu+U1oabCdbFNF6/oHH2RUl0Z9C5YOpOxQJECQzvytECDgK8Jc+IONctBSMce0Q55KCXBOQXhr2OpO4vvB70v1RYBJG8OHWIUVVG9kWHzERcGh836SEJA+P3rCM=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=oracle.com; 
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH2PR10MB4069.namprd10.prod.outlook.com (2603:10b6:610:f::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.19; Mon, 8 Feb
 2021 15:05:06 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac%7]) with mapi id 15.20.3825.030; Mon, 8 Feb 2021
 15:05:06 +0000
To: Yang Li <yang.lee@linux.alibaba.com>, shaggy@kernel.org
References: <1612686770-26163-1-git-send-email-yang.lee@linux.alibaba.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <d8c873e6-d6f5-22b2-43ac-207fb7a1fd07@oracle.com>
Date: Mon, 8 Feb 2021 09:05:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
In-Reply-To: <1612686770-26163-1-git-send-email-yang.lee@linux.alibaba.com>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SN6PR01CA0002.prod.exchangelabs.com (2603:10b6:805:b6::15)
 To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SN6PR01CA0002.prod.exchangelabs.com (2603:10b6:805:b6::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3825.17 via Frontend Transport; Mon, 8 Feb 2021 15:05:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 82e67259-a977-40a8-d717-08d8cc42eb33
X-MS-TrafficTypeDiagnostic: CH2PR10MB4069:
X-Microsoft-Antispam-PRVS: <CH2PR10MB4069063EE741388A428AE7B3878F9@CH2PR10MB4069.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:353;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TVfgmCbxhmLht6H+rYgK1ZGSqTtpordcIH8uXTqklg2M2gVKp5ujOL0jkOUWeEMB0QdW+2ZrDORUv8pTK3EMBNzJGJI5Ztioqomp36b+41HbSF3ZB62o4PjbuyeKNcOl7p4qZ36+V1j+kkeYhzuhZylEGfnwyRoGVUp86xGt6KsI6IdCcZyGkmSRkKHUR6qLVvZGxNV8X07TSTm+efz7n4ayQTRHmIGhCJkkdt5pRDkdDITzX3M4AdWzThRxaSLxmXRdPoufCytw2Y4xPPyT4ZmUBl1Yy6kF8EvXxwXybJjXl5KtP4iOdAMPlCuF6SVxh95smu1+JVNflSexG+vbvm4+gsGOg9q654unDL6c4VfXjLTDwWdJQDeIMVxgCcfsm0P9dWjldf9uwZqwNYe+EUvmaRBpsEoOS+yplTlfXrLQorzfQ6v2BkZtQs33/uS2aT0nbbhaAnoRxnDb0hM0p2wxgJpOpBww+S5Np/5sJi6aG4PIs0dPtFb/oMz+zbbKU1t8zDW6nUDTSLEdoBy/gOPuLLhxilfz2gBbgdx6Pq9Be5MUQ1l3+U6PmlcL/1q+qs+V9vqD1RY0SHTHrZik7w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(39860400002)(366004)(346002)(136003)(44832011)(8936002)(478600001)(2616005)(956004)(53546011)(16526019)(8676002)(86362001)(316002)(31696002)(26005)(186003)(16576012)(31686004)(2906002)(66556008)(4326008)(66476007)(83380400001)(66946007)(36756003)(5660300002)(6486002)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?RE5GT2xJcWNKTkJMV091MnROaDFqZjJqN1g3cC8weWI2aERMOTFHN2EwZEww?=
 =?utf-8?B?ZVBpQ3ZoNEU1TEV6NEZ0TjNQazlQRFhZemduSzU4bmIzOEp4RURKdU95UCtP?=
 =?utf-8?B?ZUMycE42eXFGeGVPanhxekcxaVVnT2RYVGpzMWNYaGVJSG5MUWxEcjZ3V2xi?=
 =?utf-8?B?TWJlUlFWbzhIZU51M1FMbitBVDZhQUlKM0YzRDV5NGxPY0hPbFd5QUt4dEE1?=
 =?utf-8?B?RVVDeXJaUWpITE01QUtuckc5UjJZdzJDeG4zbFg2TVoxejVrd2dxVTRIelZH?=
 =?utf-8?B?NDdPZGxFOVpGcktQZHFKbC9raDZ2Uy9Idm9DSzhvU3pJMlgxV1JZTTYvMDBT?=
 =?utf-8?B?NWRJTHhROVByWTQ2KzZEUkJOMjlTcTFGVW5EdUpIQktzNytCTVJ2ek5mRGlE?=
 =?utf-8?B?UjFiajhZQWFwM3Z2WTdUU1dXamc2aW0rb3RKaTZ2QmtVaG1xTkx0by9Oak5D?=
 =?utf-8?B?bnRFcnRlYjkxSG84THBzZTdTNG1JM21TMVpVTVNzMVAyUllsbWEvRjI1a21Z?=
 =?utf-8?B?dTQybWhrUXoxZllWMlE0SnVMWjFiSFRrMjVsZGZ3cWFpbnM4YllYSkc1NnM2?=
 =?utf-8?B?SlhYWXZZdEVxOHBjOFJ4QVJqeVNnM2lxaFJuSFN0QzhUeWN4d3d2cWlMNjFC?=
 =?utf-8?B?cTJRbHloTDAvZHUwcXhLaHJGV2JydHN2RitkV0xCWEVEc2tJemp2ZUNXRmdl?=
 =?utf-8?B?Q1d5ckp1YXl4bFExb1JiRVNqbW93Q0RINHlRSWtPanpycFZSODhnSjdjeUEr?=
 =?utf-8?B?WjN3WXhYbTRNV3RxdDRlc3JPdVlML1lYSDlHMFBOMzF1US9EbVNjN0hWaUZH?=
 =?utf-8?B?WFZrdjdYWG5lTUR6MWgwYXpjY0NWek1XMytWc2ZZUEpGNFZkbFR2OWZyTU42?=
 =?utf-8?B?ZlU2RlZwcnY3cWdjSzN6dlhMaDBJTll6Z2YzVXR5K21LM2RpQ1JNcWRsb2tM?=
 =?utf-8?B?ZE5RUUpKQWtlNVZkRzE2ZkNqZzIyMTlrUlZLRFRweG1WSHZ3YXNsN001UkdG?=
 =?utf-8?B?YUQzUDV0WWs0dTkwTGlHTzh2eFBoR1U3SVVDWE1ycjFlS0lDV3oyZU45a0wy?=
 =?utf-8?B?aWNYZ3h4YlJiQ3VJczIzZ3BRaThEVXhycGtKMFptYzkvWW9WWnZ2VFZTMTVj?=
 =?utf-8?B?RkUwenpqdXNEUzltSllzN0txZEQvK3VxMFVxR21SZlNROFVpbFpqTG1iTW9p?=
 =?utf-8?B?dm5uMWpvclpHVTI4aGt6eGs0YW5WS0o4dVhNa0lOenk2S09PTnFPODZCN01j?=
 =?utf-8?B?SW0zWGVCOTNLQ2tGaEsyb2NKVlU3WVNPQTlpS1B5OXNCM3NzNGFFd1pDNlVG?=
 =?utf-8?B?azYzY0s2NE9TKzlCN1I1RGJtekEzdFM2ZGNDeEVmOG9CK1hHQkIzTUVtNVIz?=
 =?utf-8?B?V0hiYUFNNkZFMzJMSlhiUk1EUnNPbFRSOW9OdzBNQUFUNGNnbEF2QU83SUhR?=
 =?utf-8?B?eHZldkZ5K3NZYU9WUGNCYU5zb3pYNTY0WExlVlVIREFQc2E2enFvbDBRZ0JU?=
 =?utf-8?B?cGc3NUEvcEJmK3lxWmdoWFcxWlhmdjJQcE9JaFMxVWREbkFBWVpNbzl1SjVV?=
 =?utf-8?B?UEFOaHNoSlVhd3pPdVE5OVk1TkIyTkFBcGw1eUNNaGIzNkV2QW5sR2Q2enV4?=
 =?utf-8?B?UWVqbDV3K0JEQlNON1VlVGltYkl2WENqYVptZldiYnpDY1poUk9BV3ZoV05o?=
 =?utf-8?B?YzVwWnMyUWt4a2dmaTcrTmZKRnVPT1ZMNmQrYWM4MGZHbldVL2g3NGkycHM3?=
 =?utf-8?Q?b28so2NJNXIWMqOF4RGfjDO6LkJJzg8VyUSMIdZ?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82e67259-a977-40a8-d717-08d8cc42eb33
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2021 15:05:06.1385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0e4NRBjz3wbaQIAXokwsTyj/HUkq5GsNt5STW7fELDUbyZado5OWnxuybd3Mb+9+pgPv9thFOy/4+ut/w59MjPCCfWOCkdszFtqwxuMgh8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4069
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9888
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 phishscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102080103
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9888
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0
 priorityscore=1501 clxscore=1015 impostorscore=0 lowpriorityscore=0
 bulkscore=0 suspectscore=0 spamscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102080103
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1l986V-0004Od-9b
Subject: Re: [Jfs-discussion] [PATCH v2] jfs: turn diLog(),
 dataLog() and txLog() into void functions
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

On 2/7/21 2:32 AM, Yang Li wrote:
> These functions always return '0' and no callers use the return value.
> So make it a void function.
> 
> This eliminates the following coccicheck warning:
> ./fs/jfs/jfs_txnmgr.c:1365:5-7: Unneeded variable: "rc". Return "0" on
> line 1414
> ./fs/jfs/jfs_txnmgr.c:1422:5-7: Unneeded variable: "rc". Return "0" on
> line 1527
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
> 
> Changes in v2
> -turn functions forward references to void type.
> 
>   fs/jfs/jfs_txnmgr.c | 32 +++++++++++++++-----------------
>   1 file changed, 15 insertions(+), 17 deletions(-)

This patch missed fixing a call to txLog() which did check the return value. I took the liberty of fixing it here.


jfs: turn diLog(), dataLog() and txLog() into void functions

These functions always return '0' and no callers use the return value.
So make it a void function.

This eliminates the following coccicheck warning:
./fs/jfs/jfs_txnmgr.c:1365:5-7: Unneeded variable: "rc". Return "0" on
line 1414
./fs/jfs/jfs_txnmgr.c:1422:5-7: Unneeded variable: "rc". Return "0" on
line 1527

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Signed-off-by: Dave Kleikamp <dave.kleikamp@oracle.com>
---
  fs/jfs/jfs_txnmgr.c | 35 ++++++++++++++++-------------------
  1 file changed, 16 insertions(+), 19 deletions(-)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index dca8edd2378c..053295cd7bc6 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -148,10 +148,10 @@ static struct {
  /*
   * forward references
   */
-static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-		struct tlock * tlck, struct commit * cd);
-static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-		struct tlock * tlck);
+static void diLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+		struct tlock *tlck, struct commit *cd);
+static void dataLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+		struct tlock *tlck);
  static void dtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
  		struct tlock * tlck);
  static void mapLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
@@ -159,8 +159,8 @@ static void mapLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
  static void txAllocPMap(struct inode *ip, struct maplock * maplock,
  		struct tblock * tblk);
  static void txForce(struct tblock * tblk);
-static int txLog(struct jfs_log * log, struct tblock * tblk,
-		struct commit * cd);
+static void txLog(struct jfs_log *log, struct tblock *tblk,
+		struct commit *cd);
  static void txUpdateMap(struct tblock * tblk);
  static void txRelease(struct tblock * tblk);
  static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
@@ -1256,8 +1256,7 @@ int txCommit(tid_t tid,		/* transaction identifier */
  	 *
  	 * txUpdateMap() resets XAD_NEW in XAD.
  	 */
-	if ((rc = txLog(log, tblk, &cd)))
-		goto TheEnd;
+	txLog(log, tblk, &cd);
   	/*
  	 * Ensure that inode isn't reused before
@@ -1365,9 +1364,8 @@ int txCommit(tid_t tid,		/* transaction identifier */
   *
   * RETURN :
   */
-static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
+static void txLog(struct jfs_log *log, struct tblock *tblk, struct commit *cd)
  {
-	int rc = 0;
  	struct inode *ip;
  	lid_t lid;
  	struct tlock *tlck;
@@ -1414,7 +1412,7 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
  		}
  	}
  -	return rc;
+	return;
  }
   /*
@@ -1422,10 +1420,9 @@ static int txLog(struct jfs_log * log, struct tblock * tblk, struct commit * cd)
   *
   * function:	log inode tlock and format maplock to update bmap;
   */
-static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-		 struct tlock * tlck, struct commit * cd)
+static void diLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+		 struct tlock *tlck, struct commit *cd)
  {
-	int rc = 0;
  	struct metapage *mp;
  	pxd_t *pxd;
  	struct pxd_lock *pxdlock;
@@ -1527,7 +1524,7 @@ static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
  	}
  #endif				/* _JFS_WIP */
  -	return rc;
+	return;
  }
   /*
@@ -1535,8 +1532,8 @@ static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
   *
   * function:	log data tlock
   */
-static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
-	    struct tlock * tlck)
+static void dataLog(struct jfs_log *log, struct tblock *tblk, struct lrd *lrd,
+	    struct tlock *tlck)
  {
  	struct metapage *mp;
  	pxd_t *pxd;
@@ -1562,7 +1559,7 @@ static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
  		metapage_homeok(mp);
  		discard_metapage(mp);
  		tlck->mp = NULL;
-		return 0;
+		return;
  	}
   	PXDaddress(pxd, mp->index);
@@ -1573,7 +1570,7 @@ static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
  	/* mark page as homeward bound */
  	tlck->flag |= tlckWRITEPAGE;
  -	return 0;
+	return;
  }
   /*
-- 
2.30.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
