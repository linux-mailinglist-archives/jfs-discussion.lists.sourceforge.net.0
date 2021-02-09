Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62642315467
	for <lists+jfs-discussion@lfdr.de>; Tue,  9 Feb 2021 17:53:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1l9WG7-000093-Ty; Tue, 09 Feb 2021 16:53:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dave.kleikamp@oracle.com>) id 1l9WG6-00008w-GY
 for jfs-discussion@lists.sourceforge.net; Tue, 09 Feb 2021 16:53:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rQ2mS8ucJ28TvXRHHjroXvheckYN/0SlaynncLjbqMw=; b=OO27mKiJskPHy9pI6peEmIaTbC
 PbjS3CfK8gaX9BjjV/0Z6jfPbLqTVedJH/o45OSP8ZpYWVfmuTr/DLj34uUOdIfhh9ch/wjquRQeN
 cSAi/PdUR1DDM9CJVZMWYBAD2r5TaOLCIrI13ZcemUTucnpzARHw31tPMqEFgSWyBRR0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rQ2mS8ucJ28TvXRHHjroXvheckYN/0SlaynncLjbqMw=; b=Fa7WTVIZjaLU3dRdSJvmXuMTTs
 b2eKK91/3zcIbrWa5MNSD7eH3Ff5m5Ur43DDZ7H0pDUYupaUQzDy6mgD4RqiVvteqEi3Y4WodZTnE
 2ss8+LCUh2U0ROHu83Z22AthxTTf32g0MK2MORTKkS0ws1Wchgj02npCx65HQ7QaO5Yk=;
Received: from aserp2130.oracle.com ([141.146.126.79])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l9WFu-000JQ8-QL
 for jfs-discussion@lists.sourceforge.net; Tue, 09 Feb 2021 16:53:02 +0000
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 119GY5vu051014;
 Tue, 9 Feb 2021 16:52:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to : cc :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2020-01-29;
 bh=rQ2mS8ucJ28TvXRHHjroXvheckYN/0SlaynncLjbqMw=;
 b=VZ+Nznokv+QJ+vz6ZhnjTCS7tYv3bjYbM/Qs9w4U5i4ZXkWNMRQfVpJzxxRKuy9sczSk
 2z8DTrMZ9WFKMdJvEz4t8jXurTgzgn4lpfNmUG2nvpKaWY0VHHN3LjVrtTgXQS6YC9vA
 A1QCvjcUBZb38LxdegDlZgqMRZjRN6kPnRQeoIIKKbcq4LV37b96QNdTWg4DPeFDJqW9
 CNHmJlD7NZOLt+Xkamm3p3qgMZ/AqLrKBKaeHgh0j2yuFuShDqeq6JPVZx1laCm0ILVF
 KojSTU2WwzR4XJTlOTy6AeuMT+ivG9At0LuBLY6/GGBTRh4UKy3P+qqCQVzl/PRNp2jF iw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 36hgmagaqj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 09 Feb 2021 16:52:36 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 119GZPb9158401;
 Tue, 9 Feb 2021 16:52:36 GMT
Received: from nam02-bl2-obe.outbound.protection.outlook.com
 (mail-bl2nam02lp2052.outbound.protection.outlook.com [104.47.38.52])
 by aserp3020.oracle.com with ESMTP id 36j511ferj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 09 Feb 2021 16:52:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JYP1cZca6k9xa/Km5OiYoSf6jobD55lZYam9kcVaswOkfWQXvRisx3GdpHh1UuPymmKJGUgnfI+cTZbcp+nODhp8oj7Ao3zvv3xbYZLlYEc/+7j523/5a6kuPATDmOtKrIXkkIVtM5OwS1C4ovmsMMTA+pB08XkndL2TcKPS+bcVinyaKF6cv8/xHtKKhZKGpNNYfjQDQOhhvQu04sbb1pYRr88TNSEOsmRIkYrsWrnt88sqSeFQ7y7Pqgswe6ni17zcPvoymulA+EvFvzmXKJIsx96Q/MTrhf6bdXvuE2wKEiq6capWujiTE25eOzKngl+x7k9ongZ1eCHDnXZrXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rQ2mS8ucJ28TvXRHHjroXvheckYN/0SlaynncLjbqMw=;
 b=G31lNf8xUap9VPkpaS3L5s2ww1TbxZ1Cj7/+Zxk57nE7dK1+EXU8v+9Q/8dbqXryQLbZCA7AUPJgFb8i/hDitagVkY6rgKZA0tWyP2eGIrop0LuxQ7d/6WvqP0hXN6yasx/BnsUqAQLEGm/M5v1aiwdaMbyzOne3dY026JLtiJOMlNW10g0atotnMEJKvrRsB4JWX69TaU81hYoxQk05svpmumJRW8sp4u1CGjsdft4acOp02eIQIHHRangbrQRtwTARBDFlRhdkSUH6bdvSvOz9mRT3wIOV1V2AFlOpOj6xLyMVHL8M6d7qtjQhuw5fyVlMnu0jade9rZNAh8e3Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rQ2mS8ucJ28TvXRHHjroXvheckYN/0SlaynncLjbqMw=;
 b=R77o1utSlzECviqxapS01ok9Z/cU3CB1IBtucQhPJ36hLgk4EbO97rCNCn1bA8Bj1TS7ceHq1PZic2t8KXDwkhss6WknfErGWTLrFkqIJs89dCWH9KNztXCHUP7pmPIc8jY6TEQa9fr7tUufbA7TAVdToOg4LsNB8mmo7vknSTU=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=oracle.com; 
Received: from CH2PR10MB4118.namprd10.prod.outlook.com (2603:10b6:610:a4::8)
 by CH2PR10MB4232.namprd10.prod.outlook.com (2603:10b6:610:a4::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.25; Tue, 9 Feb
 2021 16:52:34 +0000
Received: from CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac]) by CH2PR10MB4118.namprd10.prod.outlook.com
 ([fe80::b4f8:316f:3a25:faac%7]) with mapi id 15.20.3846.025; Tue, 9 Feb 2021
 16:52:34 +0000
To: Colin King <colin.king@canonical.com>,
 Tino Reichardt <milky-kernel@mcmilk.de>,
 jfs-discussion@lists.sourceforge.net
References: <20210205171137.208121-1-colin.king@canonical.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <044b0372-8612-6fb9-23c5-9c4e6ab79114@oracle.com>
Date: Tue, 9 Feb 2021 10:52:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
In-Reply-To: <20210205171137.208121-1-colin.king@canonical.com>
Content-Language: en-US
X-Originating-IP: [68.201.65.98]
X-ClientProxiedBy: SA0PR11CA0162.namprd11.prod.outlook.com
 (2603:10b6:806:1bb::17) To CH2PR10MB4118.namprd10.prod.outlook.com
 (2603:10b6:610:a4::8)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.190] (68.201.65.98) by
 SA0PR11CA0162.namprd11.prod.outlook.com (2603:10b6:806:1bb::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25 via Frontend
 Transport; Tue, 9 Feb 2021 16:52:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4ce5dd46-f579-4492-b5e5-08d8cd1b1927
X-MS-TrafficTypeDiagnostic: CH2PR10MB4232:
X-Microsoft-Antispam-PRVS: <CH2PR10MB42323C4251B6E36110392DDC878E9@CH2PR10MB4232.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X6qTC5CzBTby6Vz0EEiAJ1OysXtdDC0QZ5zHg/fbHV65eh/Wnq4bZwR/JRv1TjiKsPxUnL+2XlCzUEihAXohBqKWCOF5oanTnZhvGzklmZY6ClyRdDMf5fsoyoj+1llAyUk16M+kdrtD4aqJh1C+UU/TSMhjmrwlsGgYhM0YKx+XOOOLvyPHk1s7UzJIsoCI0OIAq4IRTXGFdjcX4fmtZQd2KCjQwXhDDlbWdcSWgfJ8ObHbinY+UZgq9LmILSGnE7xVDmsy52/2G2KSz8Fes8iHXpqiz29s/omboE3KDCUoz1QFx+Xb5EEHjPgDvrMHtEZBz+d532VRL9mZG+1nEs7Wy+XhH+bmzb56T1MVSJmcwcEfXLcJKftgYSqM1MoE6eHo82szUjPGpZc/hv71cG4g8pV4F63VHWFn4tn3WkHqnYqmWv1J6tHRZAgyMCCjeEcjPfbIsQHXhxXJjkgCh1tf2OgLQkJzQnpXN67gmGQN22IJFCTa1yONstOcY+aqJ4c4bR/47BpuybpHWYZDgHlVgsZgMMtHLAOLx4G0ii8zMwIqsRLvr7YaCRlHLpXqgEEYJHel9qS9QT/gER+TdcrGbiqsel6aTsnBBh9OIo4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR10MB4118.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(346002)(136003)(376002)(396003)(366004)(66556008)(66476007)(26005)(31696002)(478600001)(83380400001)(2906002)(2616005)(44832011)(186003)(956004)(66946007)(31686004)(16576012)(316002)(16526019)(53546011)(8676002)(4326008)(86362001)(110136005)(5660300002)(36756003)(6486002)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?ZElwN29RUTRUYVVyUmVKNW9nRDBtRHp6TUpRQ3hMUXltR052ckUrZ2p6dkpE?=
 =?utf-8?B?OWRDckdseG1TMU9qcEkwVXh2OWNOczJYM0N4eW9ObWEya1lxYnFOWWdBdEo2?=
 =?utf-8?B?YWpqZk5LdllIR2xuTkxPN3lUcnI4dVZ4bVNaQlpZN3ZBKzhGa2o4VXBXZ3lZ?=
 =?utf-8?B?RHRlOWVULytLb2lGckJaZVl5cWVKTGVRWWg4WWxLMks3NGF6cWl2aXhLdW5l?=
 =?utf-8?B?ZFdSMWZDbExQbjhFblpaSHpKN2hHRGVuSnVNOGE3WE1TSHd6cy9wbThobUww?=
 =?utf-8?B?Z283bURXM1NJOUdaUko0Z1ExY1VkWUxNd21NOUpROHdocTRLNlBuR3NndW1P?=
 =?utf-8?B?M2pOMXlpajdWajU2cEVpeWlNTjhBbnZvUGV3TUpRSW8yOWpQZ09PMGhpR0VQ?=
 =?utf-8?B?dzdienBtVlV1UXY3eDR5R2JscXpUTW04ODdLdHR4VGlnaUNmOTR4c2VVQjA3?=
 =?utf-8?B?aEZZOTV5MGNYM3NFNWdTOHUrWGpZYzd6OVFWUytnZmFGcE85bTArMENNbWl4?=
 =?utf-8?B?bUFKSHd4RUQxUHRPTldZRnVySy9MUVE2eDVlVDlXYjFmZk9RUndPa0RwRjJv?=
 =?utf-8?B?dHlsVHk5elhzczVoRlg2QjlUeEJiUm9tMEVzcEJsZE1PZGYvdnozZXUyWGZI?=
 =?utf-8?B?NFFOLzNNd1p4clFLT0NQSCtqWGpQMmtHSHVhOFdxa3RsZmVxTDZyL25KQnBp?=
 =?utf-8?B?N1IycjBXOVIwSkZMd0tzaDZYcGFNd3lQSkN2MFFtZ2ZaV2VjWDV4V0FVVDRF?=
 =?utf-8?B?djVRd3JNeUU1SEtnVk96YzZ2SDN5N0V6NVQvUDhXUFZBaXdNVkpCSDVCNmtt?=
 =?utf-8?B?eHkrK3NFcDZlN00wZ2U2NndDc0JUOGQ5VFlyci9pZGdCbGRaUnFkTWcvOXFt?=
 =?utf-8?B?NHdhNlJ3alNhTTd6YUkzR2lSdGNVV2phQ2Y3TDlISFNPdjlMVG9QV21idnJ3?=
 =?utf-8?B?dXVadkZubkxDVlJYOUZ6ZldhWElaZXpOUDE4UHBoaGt1OFRxR0FqNFRUelhx?=
 =?utf-8?B?NHZsWm4zTklDR2t5MG9yZVVWSzMwMWRjMHljV0l4OGV1YW90TVZVeldDYjRM?=
 =?utf-8?B?ME4vRnhCUjlUY0ZsZ3VHdVg0R3BRUWI5Ui94Y0k1QUtTcFZRRXduNEttQ2Z0?=
 =?utf-8?B?aFN6aEJ2VDh1aUhWWUcya1BTODJxeDk2QzFwZ1p6QmRDZUN5ei9nbnNqVkJz?=
 =?utf-8?B?UGhpK1UrTUVlNERRNmp5MjlQY3YxQTJ0VTBBRUw3VmNManFwZjF6VmlhelF5?=
 =?utf-8?B?RlRaUmcvaGJtaVRlME1qZjA2RkdLZWgxVDZJYy91Z0REazJmOGxrcmVSanZT?=
 =?utf-8?B?VHUwa2hLb1hjYTlvR2hrMGtLMlVrRVRNYXN0VEMrOWlWUktvOGxHT3h0Y3lO?=
 =?utf-8?B?MlREMDVvWW9CdEJselhwTkIwazUzdVc5UWlrSjVxa3BoazJsWDY4Qmh3cEE0?=
 =?utf-8?B?SlZzMkxMKzBDaktpRko0b09qWnRrZFcxWXlzN1RIdUxScC84MjRDbHRDT3Ri?=
 =?utf-8?B?OTl6bjNONkM2UURvQ0FWRDBIZXlRTkN6L1MxcHVlWnVuTUR6VVA3WUw1cUZ5?=
 =?utf-8?B?ZUVxU1Jtc1RnRW44OTVsMXlpUlJFQXV4WTlzN1RIWmVWQ2lweDlKQjMwS04x?=
 =?utf-8?B?UGgvbStucGg3Z3c1dWV6Q2x6NkkycVMvNFRZdWZNRFlKcERtVERFYjBiaVZk?=
 =?utf-8?B?VHpZRE0wVmJqVHlocitxQmNnL1RVYkdOVUQwNm1SVENrRzZzR2hIaW1kb0N3?=
 =?utf-8?Q?yPYP3vf9WO/yrCqofyPgqLOJTssv7a+9AC7yzOM?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ce5dd46-f579-4492-b5e5-08d8cd1b1927
X-MS-Exchange-CrossTenant-AuthSource: CH2PR10MB4118.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2021 16:52:34.5228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LuESIHbJCDiJFZD22wmt+YmXxM8cqHnDVkd4U7rP74sHvT2nP85RjYJJo9XzuiDuV1R+Q8Qnk1q5CGofgp0tb97X39+spzlsZrJbgVIL1Y8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR10MB4232
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102090082
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0
 suspectscore=0 mlxscore=0 clxscore=1011 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102090082
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: canonical.com]
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 -0.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1l9WFu-000JQ8-QL
Subject: Re: [Jfs-discussion] [PATCH] fs/jfs: fix potential integer overflow
 on shift of a int
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2/5/21 11:11 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The left shift of int 32 bit integer constant 1 is evaluated using 32 bit
> arithmetic and then assigned to a signed 64 bit integer. In the case where
> l2nb is 32 or more this can lead to an overflow.  Avoid this by shifting
> using the BIT_ULL macro instead.
> 
> Addresses-Coverity: ("Uninitentional integer overflow")
> Fixes: b40c2e665cd5 ("fs/jfs: TRIM support for JFS Filesystem")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>   fs/jfs/jfs_dmap.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index 94b7c1cb5ceb..47dbca7e52e0 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -1656,7 +1656,7 @@ s64 dbDiscardAG(struct inode *ip, int agno, s64 minlen)
>   		} else if (rc == -ENOSPC) {
>   			/* search for next smaller log2 block */
>   			l2nb = BLKSTOL2(nblocks) - 1;
> -			nblocks = 1 << l2nb;
> +			nblocks = BIT_ULL(l2nb);

I'm not sure I like the use of this macro here. It seems to imply a bit 
flag of some sort. I think it would be clearer to use

			nblocks = 1ULL << l2nb;

Maybe 1LL rather than 1ULL since nblocks is s64.

>   		} else {
>   			/* Trim any already allocated blocks */
>   			jfs_error(bmp->db_ipbmap->i_sb, "-EIO\n");
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
