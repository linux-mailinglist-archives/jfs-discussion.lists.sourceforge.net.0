Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EEA62485C
	for <lists+jfs-discussion@lfdr.de>; Thu, 10 Nov 2022 18:28:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1otBLf-0005Qh-29;
	Thu, 10 Nov 2022 17:28:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1otBLb-0005Qb-4B
 for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Nov 2022 17:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dThfVcB7TUf9kyDlA23tCkFP9FRLsdkpAe5ybh6a07c=; b=YnRx9x6iut56fhviF9RDj+FPcy
 Ba6uOVyF8Q77/gZ3A7jibFu0yxac3brAqJWVP4di1Wv1PgXPDYUvfbqnMrhMN1X0dEQROqYG0+R/7
 suBMZG7iJe94Ius2KKI5ZTdaaXwbkLJ3rr4Rmarlbp7CE9cSe719l/JlN4AoR2pxKpdQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dThfVcB7TUf9kyDlA23tCkFP9FRLsdkpAe5ybh6a07c=; b=BSQHXbHc/Xt7CHSEsc5PHPbfSe
 ttZJbwCuH81a/PHnVVC6OMXSjM6/DhE+BvCHRNsy+0LjVJBHnhZ+VK51QtZZ3HCaa/gh83PXlK25Y
 Oglj6SRXYJCAdSeZX9q22iO4Zn6Qi4vHlTX5+STzf7BetwRcyubs951WBOP3TXZHXO/I=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1otBLR-003KU8-7N for jfs-discussion@lists.sourceforge.net;
 Thu, 10 Nov 2022 17:28:15 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 2AAHQiNZ012048;
 Thu, 10 Nov 2022 17:27:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2022-7-12;
 bh=dThfVcB7TUf9kyDlA23tCkFP9FRLsdkpAe5ybh6a07c=;
 b=LfNc1kkb+znBB5l8/big+Bb+Vn0z7TGVwWDJv3boX6oGiMLG5SgyfWyBjBPUsR3skj8J
 PSwG36cS/PIorlEsVkjZDqVF1eq+Ww43D2EyHDcAO4d1a++Ob4y9AzeSV5YGsJ7urU6d
 ArLc8f9ZetmXnBpuMcdpOhJF3F2I4mmBexc8xfKfrCrrdK6aZyUPDI6bIXu2PKAO+5FS
 3vzuDHAubX4YiLRttb9dfQnqou0OsR140zsX+tSvVkx4MNvaiJ/IH+TNzGYrDBLXborN
 +Wz8ofwBQDWvB0Ml5lkuPLCWe1NFCF0fRnNxl1hK/61EsX+KDrioWQ77IjwwSk1Iw6oA kg== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3ks5cu830p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Nov 2022 17:27:51 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5)
 with ESMTP id 2AAGCuR9038119; Thu, 10 Nov 2022 17:27:21 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3kpcsgu2mx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Nov 2022 17:27:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fFhn6obzQNicO/EdS6QxzRyVtB66hgPf00OE//GRI30uUNG91hBZpsG9RypcR6+bKwQXj/7PwNoi3Ol48r8FX1B2DA+/rqpSU+ZmjgBRdYIzf7TJawoDasyMQqlWlN6mPfz61KMWcUHiy0s9hI2oAGU5mBWy4ZYfsVJN6LH02MZx3Je0c1LwnLQ/i623TCwE1kHW8+DaZ8uklOM09m4y/WV7ergzmgf93h5bKheiQ2zNmMDivOMUmlsgk0EjnoycsfgNL/rBtgk5yO1BVES4/2qKRkluRB0tIT0+cO+wOOu9MY3pdaZAFmbmKWEOqvwMoeVMGpZJvvu/U/c5tFwlfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dThfVcB7TUf9kyDlA23tCkFP9FRLsdkpAe5ybh6a07c=;
 b=oYYU7SI23ClAr/whqGsS3WIWYS7LrMMrZ73E07kMYGYHVs4MUKu26ywBffKLMqHF7fwMhGAeJTo4S6Ahy4otHy66L5hpEiv81A0KIOLz32GjEuZnUc+FborGFa/C7EzhgJgQ/rG2XmJBeOc4/CHAPQcse1slSG6Ur+5xhaLUHlaDYW9hc5ARh3AmyzEpVM6naZHxW5flOA7ErDMqNTfJZcBA63UiVF8gQmNARmlYMqbJo9wiPXvHRrqMvi2QZfUNUIj3syKz7G8VBQQMk2m9ZvF2a9r3a7iAb2oJK0/Q3QBULxijZdkwUsx8qZNqMe3bKgt0XDdN7uL8U4RV+qSHgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dThfVcB7TUf9kyDlA23tCkFP9FRLsdkpAe5ybh6a07c=;
 b=hGHNWhfgWD7WIHcqTm6kpJ2QD1E//OHggyWv9cm5mEbxFWjv43foD/tb18zBhJLE2PCiOaS8bvLzYMSnBzAqf4t2GgBMMvWmJ1OrlSFD8tyvfarBBClAXhJ3kYetAa3KVzLKfW1PjvCeWiNr7ZS7NqbXRl+J9o1szfnsk00fci4=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by DM6PR10MB4393.namprd10.prod.outlook.com (2603:10b6:5:223::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.29; Thu, 10 Nov
 2022 17:27:19 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::cdac:526e:e65:cfd8]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::cdac:526e:e65:cfd8%6]) with mapi id 15.20.5791.027; Thu, 10 Nov 2022
 17:27:19 +0000
Message-ID: <9f7850aa-1a34-f3ac-7fe3-bc6c16057326@oracle.com>
Date: Thu, 10 Nov 2022 11:27:16 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: "Dr. David Alan Gilbert" <dave@treblig.org>,
 syzbot <syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com>
References: <000000000000427b1a05e997130a@google.com>
 <Y1812bdYPcOn4lll@gallifrey>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <Y1812bdYPcOn4lll@gallifrey>
X-ClientProxiedBy: CH0PR04CA0063.namprd04.prod.outlook.com
 (2603:10b6:610:74::8) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|DM6PR10MB4393:EE_
X-MS-Office365-Filtering-Correlation-Id: d0dd1e57-0b17-4fd0-1b26-08dac340d1bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bxQ/vz3D+fbCFZR5QLMoMHAxF+oZeLGxpVg8SkjTVhwphzdcxiAloYShPAUULDHigCsVCLsM6W6zwJgZ+58FOgbUOlg1+dLTQEJU2pCnE0n2vmCSiUlSROu514G64oLswu88gc9eAZsMIAexzyJ1XH53FMCiGlR/9hMvQBs4HA33KF3D8qTttYO98eBejYY4t87I9X2f7hKXhDmjqL36gUSdYlBeR+tKrwsdqcttphYYfV0s0Fyc5OXXqxo+AMe1zFwxSIWqpjaypIV6aaphWD6VuQY+mjTOxFh6z3/0jvAYg27EYjF8x9bgy5j3BOclj1AdJUzqfJ1FpGqZY2KRNdBY+mk5TROm+mBTudlRYzL7W8CSRhEF80N2xQwou13W9XQ8aRNrfR8PoOORp/5xEHIK+oCsppv+N5civ+GWJdJZwaMaTRtmasyT944XHd/6s36mL1Vvwxk7Sj5fDo4eKHp5q59czTSXr4rnGzJawi+7esYAzyd0T9YYeHSOwde1PBYhh3/KSZZVozhK9Cm4F0aRpOozcyxtDRACIPCp6dh32BMopq7MWGj2CABdHvwCcPw8WgwRp4jhsBbUWRZWjy72boOvyQeVE4TREskw+hc5swj+wYTXTKmsw2aEwl2J7U3AfMNXv9khdCG52/cRtbiqDdkLHdqLBOQNRWlRQp8PXSFb6PFDvF0+hvieHgj59FfH8VoNVLc/0pc6YiGRACtRMKb7m+Ovkwn5dg52IrbN6P09krTwAW+sbOsclv2eF0KWZooZLbwNCLNaVDfoZWs0ieJdElYhnf4O906oS5JrjiIQWZfdzJJKMTLUNhGog41OTKUB2tG89iigSLpViellJCD+Y8lELrmnRmcOCD4p5INEAD7RZ1Dz+8hrB7MX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(136003)(396003)(346002)(39860400002)(451199015)(5660300002)(2906002)(31686004)(110136005)(316002)(44832011)(41300700001)(8936002)(66946007)(66556008)(66476007)(38100700002)(8676002)(6666004)(186003)(36756003)(6506007)(31696002)(86362001)(966005)(4326008)(6486002)(83380400001)(478600001)(2616005)(26005)(6512007)(99710200001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEFZVSt5TG9hdmlIVldZWDYwclNZZENzODh2eVZTNFcxTHdhOTlJNzA1NEhC?=
 =?utf-8?B?V0dld0JPN2xZTzVsSGhJWjlQM2p3by9xRnFKZHF1Q0IvWktpY2hQdFRPMXBY?=
 =?utf-8?B?QThmZTVmUmdXMjQ1d1FBZW9ENTh3V2JremtvN1BXNTArT0w1MWE5TzdOQ2tT?=
 =?utf-8?B?ajRZSTFMUEZCaWZLdEYxM1dIbWNraHhtdlhyQXlLblNpdytoRFZ5Zjkrb1pL?=
 =?utf-8?B?aG9UVUF2YnRjbGp2K2VhcmFUbFdsYkpxTm91Y1BnUm9jV2VremdNUjFjYkdC?=
 =?utf-8?B?NUpEaHFyZDM4cjY5RDJMUnkwb1B3VzJFRGFCSFBmcllDRXVLQjVscFU0MUd6?=
 =?utf-8?B?Q1pzSXJKSFQrZXV3dUZ4N3VSQ1RJWUhRTkZwNzAyM1FVdWI5R0V1MHZ3N1h5?=
 =?utf-8?B?OVBDczdETFlMV0o3cEpUYmZaTy94bXcwbnVzV2ZQRGowbG12aDg0SWdOa0R1?=
 =?utf-8?B?bUQ4QkNYR2tFSW82a09rQXJYUHBFbDBQQjVyQ1FYZjBxOVVCZUJzUTNmNzlF?=
 =?utf-8?B?U3pnaE8wZEY5dGZmcXNmNFBlN2t0cjROOGd2YUlod25ES1ZlQlZpeTRKdVRi?=
 =?utf-8?B?aVJzRHdESDJQMDFHQmw5T3ZiZFl1dlpVY3dncDVsNEtUS2UycituWm1WZDRJ?=
 =?utf-8?B?Uklndnd0MDM0Mkp3RWhWeW8zc1dsc3E0M1FkenI4d2gxQTF5Z2JKVnVHSkEv?=
 =?utf-8?B?ZHJDNnVKZzVwVFZaYWFBUzQzZ1hyemlBY1c5YUFBZ0R1WklEWE5vbmlKNWtT?=
 =?utf-8?B?cGQxY0I1dnZPUzVJOGE0SkJKdWF2Ti9sSkx4ck4zcHN3RFR5QWxjWDlQUXl1?=
 =?utf-8?B?bDZLSFdOdTJKQVdSeWYxVHJsRDRjeGlBVVluMDVDcXl4eW1UQTFOR0pzUlpW?=
 =?utf-8?B?bEFiS0hianpMMGZaZDlRU1VFak1nU1hXaml5QWJqZEZwdUNhQ09IU21FSkFh?=
 =?utf-8?B?STBweVZsMGI4QzNKV3Q3bzdUQW9nZHF1YlUrZHRNVHpvS3dpanZxSVFQUk1l?=
 =?utf-8?B?UVhiRytwOExScWZyV0NQWXc2UGVuZ3I3SGdYbFdDRm53b3pOZ3ltZEFYa3hM?=
 =?utf-8?B?SkRwQkp1a0pjSDhUUmpiaVZLOUw4RUZmdkc1VkVFMm55T2tvLzh1bW45dDhO?=
 =?utf-8?B?c1BsaHNGMkJyRkFKSWJxNGx0cWpUcGY1UFVWeFFWdUd5Z08wdG5XZlgzdlpF?=
 =?utf-8?B?MlA4ZThPZi9jL0ZFOEdLRCtyVm9CNDQyazFMN1ZOSVRNL0V1SDFHRE1YN0JE?=
 =?utf-8?B?UEF2R2pJUTNlTXZpZlZ1ZDNNN0tib05lemxOTW8vRVdlS01tNFhPd0RuL3JW?=
 =?utf-8?B?czBnbjVrVWZjM0lzbVBpZE5wcEJ1MjIrQzdRQVFBN3hTUVBtazFPaTBFenJP?=
 =?utf-8?B?RVpkT2NqNFR3TWVMUVExOVAzYWd0VFFXVFJOWlp4a0VYMVlRWmJOdnF6ZXh5?=
 =?utf-8?B?UDJBNlRaU0pBRDBXTzFGQTlFRWtnZm44SDV2VVFyRnNYRFV6ZDYyS2p4cTlZ?=
 =?utf-8?B?aGkrQlNVVWU0NGdqME1TZU0yODlyb3dJaU9RQUFUUjlnNkpEQUhLeklqSUd3?=
 =?utf-8?B?cXhtMXNyMEtxM1l4V05LblRJQ2MyNnNNUElSMWIyVWtGUzMzU1VSMDl0TU1q?=
 =?utf-8?B?Ny9KRm5nYVpwUkhSaFBOZFliYmd1Ykc4bG85SWdVQU9WbzR1cUpQdUdoK1VP?=
 =?utf-8?B?RE0vYXV1UmU1M3VuYW5ydVpQd1B3M3Q2YmducnhRSlc4WWkwS2R1alhDMFVl?=
 =?utf-8?B?YXlJcnJaVE0xNXlSTm4vSGZYbVF4WExqV1RhcWJ5UExRSzhzVk4wUUtyZW4w?=
 =?utf-8?B?RXlXRm9ZaGhiZGwrK3VWSS9KVzh1Rm9zZEpOekt3RG8rMzk1Y3c5cGZNcXVi?=
 =?utf-8?B?RmNmRk0vWmxQSUlCREY3L3Q0Y21aWWlpMEc3cS96UUFkTkJwbDd6NUc3VnFZ?=
 =?utf-8?B?aTRpL2sxME81WFkzWEtPVXZ6dE43MDgxL29jUHNYM2JUTlduRGV0ZjJCMHBj?=
 =?utf-8?B?d3B5N3RUdHpYZngyNWIvUnYrZWltMVJDUGpCaE9qWXRUZ0pqUTRiQVdYSzNJ?=
 =?utf-8?B?VVdXVWRYWkpwVjI0cGMyM0FMcjUrVGRXSndGRDN1MzIrTlZjdUJZRlhxU1Zl?=
 =?utf-8?B?L2pvSDhCaXAzMDFVSlhWOWNXMjNQRkprMzN0QnlxaS9SOG5icnpReXpPWExJ?=
 =?utf-8?B?cUE9PQ==?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0dd1e57-0b17-4fd0-1b26-08dac340d1bd
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2022 17:27:19.2688 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yu6jGtNOTufTPINNFE7pGI/xIFzj1hvwglZKqTs+aPn37xPRVxClgVMe9NyXfQVFhM88uOTYAGilV2ZkTbW50dnA9vUbcuYoj9aEC0i95m0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR10MB4393
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-10_12,2022-11-09_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 spamscore=0
 adultscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2210170000
 definitions=main-2211100121
X-Proofpoint-GUID: GQsgu_mx4ssMzsFV9MhKCzWohcXG4s8z
X-Proofpoint-ORIG-GUID: GQsgu_mx4ssMzsFV9MhKCzWohcXG4s8z
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/30/22 9:41PM, Dr. David Alan Gilbert wrote: > * syzbot
 (syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com) wrote: >> Hello,
 >> >> syzbot found the following issue on: >> >> HEAD commit: 3db6 [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.220.177.32 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1otBLR-003KU8-7N
Subject: Re: [Jfs-discussion] [syzbot] UBSAN: shift-out-of-bounds in diAlloc
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
Cc: jfs-discussion@lists.sourceforge.net, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/30/22 9:41PM, Dr. David Alan Gilbert wrote:
> * syzbot (syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com) wrote:
>> Hello,
>>
>> syzbot found the following issue on:
>>
>> HEAD commit:    3db61221f4e8 Merge tag 'io_uring-6.0-2022-09-23' of git://..
>> git tree:       upstream
>> console+strace: https://syzkaller.appspot.com/x/log.txt?x=1017fb54880000
>> kernel config:  https://syzkaller.appspot.com/x/.config?x=c221af36f6d1d811
>> dashboard link: https://syzkaller.appspot.com/bug?extid=9cd47a3d9ebd6776eb03
>> compiler:       Debian clang version 13.0.1-++20220126092033+75e33f71c2da-1~exp1~20220126212112.63, GNU ld (GNU Binutils for Debian) 2.35.2
>> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=12bbd0d4880000
>> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=153195ef080000
>>
>> IMPORTANT: if you fix the issue, please add the following tag to the commit:
>> Reported-by: syzbot+9cd47a3d9ebd6776eb03@syzkaller.appspotmail.com
>>
>> loop0: detected capacity change from 0 to 66104
>> ================================================================================
>> UBSAN: shift-out-of-bounds in fs/jfs/jfs_imap.c:1357:9
>> shift exponent 218103809 is too large for 64-bit type 'u64' (aka 'unsigned long long')
> 
> My reading of this is that jfs does ~no sanity checking of the
> structure read from disk when mounting;

Yeah, all of code reading data structures at mount time should be 
scrutinized to make sanity checks on the data. The code is just too 
trusting. I'll try to find time to go through it all in the near future, 
but I will appreciate any patches submitted by others as well.

I'll also make a better attempt to be more responsive and not let these 
things sit for several weeks or more.

Thanks,
Shaggy

> 
> int dbMount(struct inode *ipbmap)
> ...
>    bmp->db_agl2size = le32_to_cpu(dbmp_le->dn_agl2size);
> 
> The line that triggers it is:
>    agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));
> 
> which is:
> 121:#define BLKTOAG(b,sbi)  ((b) >> ((sbi)->bmap->db_agl2size))
> 
> so if the mount is given garbage, then that's what it'll shift by.
> 
> this is probably the least of the worries of an unchecked disk structure.
> 
> Dave
> 
> 
>> CPU: 1 PID: 3607 Comm: syz-executor161 Not tainted 6.0.0-rc6-syzkaller-00291-g3db61221f4e8 #0
>> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/26/2022
>> Call Trace:
>>   <TASK>
>>   __dump_stack lib/dump_stack.c:88 [inline]
>>   dump_stack_lvl+0x1b1/0x28e lib/dump_stack.c:106
>>   ubsan_epilogue lib/ubsan.c:151 [inline]
>>   __ubsan_handle_shift_out_of_bounds+0x33d/0x3b0 lib/ubsan.c:322
>>   diAlloc+0x141a/0x1700 fs/jfs/jfs_imap.c:1357
>>   ialloc+0x8c/0xa80 fs/jfs/jfs_inode.c:56
>>   jfs_create+0x13a/0xb10 fs/jfs/namei.c:92
>>   lookup_open fs/namei.c:3413 [inline]
>>   open_last_lookups fs/namei.c:3481 [inline]
>>   path_openat+0x12d0/0x2df0 fs/namei.c:3688
>>   do_filp_open+0x264/0x4f0 fs/namei.c:3718
>>   do_sys_openat2+0x124/0x4e0 fs/open.c:1313
>>   do_sys_open fs/open.c:1329 [inline]
>>   __do_sys_creat fs/open.c:1405 [inline]
>>   __se_sys_creat fs/open.c:1399 [inline]
>>   __x64_sys_creat+0x11f/0x160 fs/open.c:1399
>>   do_syscall_x64 arch/x86/entry/common.c:50 [inline]
>>   do_syscall_64+0x3d/0xb0 arch/x86/entry/common.c:80
>>   entry_SYSCALL_64_after_hwframe+0x63/0xcd
>> RIP: 0033:0x7f60b0aa1f09
>> Code: ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 40 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 c7 c1 c0 ff ff ff f7 d8 64 89 01 48
>> RSP: 002b:00007ffc52136898 EFLAGS: 00000246 ORIG_RAX: 0000000000000055
>> RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f60b0aa1f09
>> RDX: 00007f60b0a60403 RSI: 0000000000000000 RDI: 0000000020000040
>> RBP: 00007f60b0a616d0 R08: 0000000000000000 R09: 0000000000000000
>> R10: 00007ffc52136760 R11: 0000000000000246 R12: 00000000f8008000
>> R13: 0000000000000000 R14: 00080000000000fc R15: 0000000000000000
>>   </TASK>
>> ================================================================================
>>
>>
>> ---
>> This report is generated by a bot. It may contain errors.
>> See https://goo.gl/tpsmEJ for more information about syzbot.
>> syzbot engineers can be reached at syzkaller@googlegroups.com.
>>
>> syzbot will keep track of this issue. See:
>> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
>> syzbot can test patches for this issue, for details see:
>> https://goo.gl/tpsmEJ#testing-patches


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
