Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74857741335
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 16:01:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEVjY-0003LK-Vo;
	Wed, 28 Jun 2023 14:01:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qEVjU-0003LD-3P
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 14:01:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eayAxsdhB4luKzP7BeN40QpL3dzNrUHWQskXaJXloxU=; b=IFfhLTkRR95XPeTXPkxcWgmQdm
 uOVbIxnoMmoWDYEW3XCQeMj2nasS/grjhwqrdPORLe7MqfSeHJKaKi1xbbbX+SeTQnhG5UkMFC/+7
 Z+4BOiwzJSEOdMq0go/UDDn/wT508VyKfiMdtlhvdxenXu4ERjhYqs+4HGXslqKA09/E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:To:Subject:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eayAxsdhB4luKzP7BeN40QpL3dzNrUHWQskXaJXloxU=; b=NVd0newKBQu1bWiHL5BAXdBd80
 7lhfjHxLmY6hf8w1358sxNGtWLsZaBgBep0Jbasn5WRX3FSMhUz4S6TRMGDMFqTnXLiiAYr7h/v56
 ge+0k8ID+j0uRzGKKtnLEdrLg3xadXhiA4KU3yrg5Oi5GMMbvf3VdWe7aPCuCAqulbuM=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEVjL-000E0a-Fv for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 14:01:20 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 35SBT3Cq001809
 for <jfs-discussion@lists.sourceforge.net>; Wed, 28 Jun 2023 14:01:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=eayAxsdhB4luKzP7BeN40QpL3dzNrUHWQskXaJXloxU=;
 b=14hIfqUotC3dL86ir1czdtyQHJekso74LxyCTffZOps3i10N5Fl0JfTPFxPei+G8Fh2z
 qKNmVIgkq8aspKl/KdrxfJo7jluOf+tg4fuEEBkTwo+/e+QTIrafI11XEJ+S7jwod56p
 UwXRidiHzfGhkpx9x3dS4ARssQTNConfq/L6cOMNAGfK99KkGcvql4R8Az5RRf2NhCIO
 rLW1r+ulWyZf8UAOpE2v3iIhhku8UsGmcC51/2RInMFuiH8B/NtEVQfarYJ51RkZ8F/v
 /4sY49dxu9WlZs/ZEaKLP5PoVUCOOqZ+xIpr1V8cFois+jfJtbW+o2+FnWX8m2UAqW33 4A== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3rdpwdfj5k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <jfs-discussion@lists.sourceforge.net>; Wed, 28 Jun 2023 14:01:04 +0000
Received: from pps.filterd
 (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 35SD0f5k020008
 for <jfs-discussion@lists.sourceforge.net>; Wed, 28 Jun 2023 14:01:03 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2170.outbound.protection.outlook.com [104.47.59.170])
 by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3rdpxbtgmx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <jfs-discussion@lists.sourceforge.net>; Wed, 28 Jun 2023 14:01:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TQ32a7qmTaj/OHtYEl4z3b9PJ9DbWvGbCzqSAx2haCs10SROMw0UbzhyJgJWXbD8t++gFYwiLOO18YkVYrUbYRS/Xd/vsULxa/EHvb0Pe2hUlpIcrLEpf8Rssgslye5vjf+XL6ZX1MbdbwxlGUJGwp21r4h5pRSihNPpyL5efByDPlZbAgvCPhbERs2BIVg7pEUAgCEHixp9mQ6ODB8/DJ4gPMix5mBQEF9iQP2CViLd4crOqh51zKsqhPMHLUw5n2TUAQuPtiO4iMRAWy7ePpn6+uIcirLhzcXAACgMD9k6gBkLLR9zWEEFYobRYl82fJ/QsPILlpDEstltlu7YXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eayAxsdhB4luKzP7BeN40QpL3dzNrUHWQskXaJXloxU=;
 b=XClX/QiXuBiPBPOt+nODInc3vutubmTCzbn1lGnxOjgILUN4089yzxlPB3nAQFjRx5nMY6aewzp3iDUk4zqvDvXlcJB7eNI0TfnvGX0YLVUdBN8JYuc4rV2tgUnueV58eQaj7eE+hQPCofjcIOeA1FYjGI6t57j4H/DzuQpYpCq87R1ODaDW0cJqKVhWOmJXH+XpoeWAzNv+qoExo/sZn6OWv201GspAFXOXUlhkPoqUtEZTrKOEs6VBuoesznuReopo0RRFpm4P9Z/PrJHJ7f4tCQbUPm1EHFat3U+J6gPCNCV5LNRu52mAqiGd/e2pNDooE0oiAbzPH/5o0V+qhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eayAxsdhB4luKzP7BeN40QpL3dzNrUHWQskXaJXloxU=;
 b=jphU0cZ4xTjIpV9hdH9mRCyW/zi9oIpkhQcBdqz4dYGXjJRv5qzlakGNwmHRL0PjGHXtdOuvX5bsGwCuTjPDnjlOmv90/TWfk68o7+O9D92oYp+7gDmI6tlbjy4PmN38yAB3SVb9letSmuZhdew7JqXDHREU6pGbcP39z5AI+PU=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CY8PR10MB6660.namprd10.prod.outlook.com (2603:10b6:930:52::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Wed, 28 Jun
 2023 14:01:01 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::9c17:d256:43b9:7e96]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::9c17:d256:43b9:7e96%6]) with mapi id 15.20.6521.023; Wed, 28 Jun 2023
 14:01:01 +0000
Message-ID: <1af86897-1ba1-b674-f38d-a69023f32352@oracle.com>
Date: Wed, 28 Jun 2023 09:00:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: jfs-discussion@lists.sourceforge.net
References: <20230628011439.159678-1-linux@treblig.org>
 <9343462e-6a4a-ca7b-03b8-4855e5a33b72@talpey.com>
 <ZJw4iLlFWRMq6a3S@gallifrey> <ZJw50e0pvn/IN5Gj@gallifrey>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <ZJw50e0pvn/IN5Gj@gallifrey>
X-ClientProxiedBy: CH2PR04CA0010.namprd04.prod.outlook.com
 (2603:10b6:610:52::20) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CY8PR10MB6660:EE_
X-MS-Office365-Filtering-Correlation-Id: ca5df554-5a6f-4a7e-260f-08db77e01b0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nfpi3gL46Itm+MooBLMhSaWGkILoaa5Q94zbN6IfzlTOXX+hb4S7eU4u5Q/67kDNZTM2BRTLjN4P3FNosaAONTfiyPrfE15EZyKv9ebhvtclIxUgxiUMJflGp7gtAdv9NorS0o6Synzerr+VlMP3Hyj+y+3sq7V/VsGAmxDlSiLq07xiPlzntQuQoqKbYa1cPE2RF0vy7sYlno1XJGRjnVe6Q2Kbp1JQvtZtHJoSyy2T/vf8mbB2yIKZcgCBhO8HNSrITUAI4h8XbfaWqHKIfZs08BpdCNZgv/0VB/Hgi7aKYHAhn9Hhz6q0FwgISYrFJAf40LoiFB3GTbYmIQm/YPfXLogrX3rIOxj9kNtq9ITlTmBDmkBOuEzFHN8hDC0axvXVEmjsThjMemUSFin5HdrLLcccRBWx58zgJyDoyDnqEpyuZAfiii5i491t1smJxHlIEFXupOTz4tAU3jt81urBcIug9kD6f12HPG5lH1glJiHKAooSJO9nc1VWeA2Dtre4qlVOM+ZylKXFlIrk/diTz64q70nqqnNeY4GT7ojs4PqmuJOTZHlg+C2XOnS1pfljsHPhcqvcI9h2SV6CapSEUzTPnG4pIWIlvRAGMU5RdIkO+KxoW2ALd+Doai1RHcSUOOp/ckv99CVK9vMCOg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(346002)(136003)(376002)(366004)(451199021)(31686004)(6512007)(66556008)(66476007)(44832011)(5660300002)(86362001)(6916009)(41300700001)(8936002)(316002)(36756003)(66946007)(38100700002)(8676002)(31696002)(478600001)(966005)(6506007)(2906002)(186003)(2616005)(26005)(53546011)(83380400001)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ri85ZFIyTTJ2Ujl4WXROODEwNTN0OWdmeTl6V01oR3FuazRXd2ZqUkEyU3hn?=
 =?utf-8?B?L2NXeHAybUd6bktsNEdGNkRNUkRUNUJFeTdlcjV4a2hWTHlqcmo4bHowMVh4?=
 =?utf-8?B?cWpERmZlazlGWTVYc0lSUWJjY3V6ZENqd2RNMHByU1VOdE1HQlJRNmV6Uit6?=
 =?utf-8?B?LzVTVFVIU3U5LzAyOXVTR0pQaDRCSEMwRXJRYkpMTU5pYVBXQzcyK0NBaTJy?=
 =?utf-8?B?aWc3VHhmaVo2blFDUmh5MzNEUFRHbWtBcEJXSGJDZ2VmS20rNm56dUFuc3pr?=
 =?utf-8?B?QmRSRGRnMEh3Z09jczM2RjcrRTN2TjkvcGdBckZZSDFBNVQzZlliUUlKQUlh?=
 =?utf-8?B?dlpJYjdvemVKaHdYbm9tNmtFOFBSSHRTSDNPY2NZSXV4elpDNW50ZDNDT2Zn?=
 =?utf-8?B?YktRRk5qU1hydVZCZjRpcVpxRmcvM3Ayd1k4VXBCUHlYK1RNOThZN0w4dno5?=
 =?utf-8?B?eml1TUMrbnZ3ZXpqUWZyTkZ4ZlJ6T3ZpQU93dUtVM3lVRzR1S2VuWEhST0xm?=
 =?utf-8?B?U2w4Z3BZNkhDa28xTitqUGRvY1BQbmVjUmpBb3dIeHpTRVRLeGpGRHd5QmdK?=
 =?utf-8?B?R212S1ZHT010MmxXWHp5SnhjUEsvVkhwYWVqRlRPb29kQjVKL256c2Z2SXpC?=
 =?utf-8?B?TVZLWHZHV0V5TmM5d1VSUENIVDdpUHpZcGtVMThITVFKaFgxdmVnQVVmZUM0?=
 =?utf-8?B?MTBRSFA5UWxGeGc4QzFLaGZBS3JqVi9IMFcxNmphSFdrZEtFeGFlNDc0alE2?=
 =?utf-8?B?cHM0dGROWDZQWWNoWXV4ckVVZWM0TGZaSWNVUXVBQ0lPUTlwM0ZFQ3F2WEsw?=
 =?utf-8?B?TEZpRUhoa0t6MDN4ZXR3TXRNZWZOS1BTa0Y5Qm00dW9pVXNCVkNrZGlqUmdY?=
 =?utf-8?B?Zzc0aEpuaEhUZXBEeS9SbmR0SXY1MWU4YWc3c0ZpNlZ5SDFUWjFTcXc3Vkt4?=
 =?utf-8?B?anpVZkJMam11QkhNQjlFUHBOUTZkRFB3YU1oOHA0T01jY2ZBbTFneUtMTEVE?=
 =?utf-8?B?dW1zMEZDWmVDbDI5dWxpd0oxOUJBbGFJZktOMmdFUHNTQWpWdDA0QVZpZ1V2?=
 =?utf-8?B?c1hoL2RGRmVBNmtlS01qN21USW80R2lldERvQTRjeG5JenBwSFN0Q3ZtTURl?=
 =?utf-8?B?REpSZ0gzRVFyeDhHcVhtZzNUSWJLVVlMNmVBVURqRzdEZlJZeU85TEl0N0Fh?=
 =?utf-8?B?Zm1VQTBwTmhnakdXWHBoN2IxTTlLUTlrSXpMdC9sNHNaMU5Ebk05Tm9QT0JI?=
 =?utf-8?B?bjJwU1BYaEFFSlIzSmNvdFcyUyszUFVyYzFEaFZaS1c0dzRRUjRiUzVBN2R6?=
 =?utf-8?B?MDlkMFVMRjZnYkgxSnBCZlpWdzBYSzFORGhPcklNUERFSFhYZGlVaVVzSUVi?=
 =?utf-8?B?T2s1dCtqV3dsWkJmOGUzNHlNNFBuencvUVJCTWNzTEdtVGs2QTRWVWhkdHUx?=
 =?utf-8?B?ck13bWkrUnE5Wnl0azFDaDJIVFl3a3hvbnZOc0c3ajRLV0lVTlNNeWpOem0x?=
 =?utf-8?B?dUtXOWVVYlpaZ0VUV1A2ZmVyMjRtbjMwTXVXSmtLNGdOakk3RWlWZVkxb2xr?=
 =?utf-8?B?MlpZOUFpQmZzaUUwVFN1czZXODA5THZNdEl2dkxZQTFSdnRIbk00Q3A1a1py?=
 =?utf-8?B?QzQ4V2I1UUxGOHpLNXhrZ1ZOUUdGWkYxbnFxekVBaVdQOWVZaVRtRVp1NEd6?=
 =?utf-8?B?c2gzTWhMNGpPMUZ1a2xBeGZzMG5ROGplN1p4djNhbWJaOXB2Q25PVUxVY2lI?=
 =?utf-8?B?MzBvVkpEYjRSUlZjZFNiT3lRRGNtWGpTS1NDYVBsOXo0ZGFqZUJjZEV5VjBS?=
 =?utf-8?B?Q05sK0JlZ0lhODI3K1ZSbUlhNlRtdmQ0eUNsSnZEck51dVY4ZnFWS05uYlJO?=
 =?utf-8?B?WCtyUlV3M0F4Y204SXhFVEF3V1Y3a09XUy9xeE5vZmp6MmxuS1NlbkJhUWJ3?=
 =?utf-8?B?MDAwMzhOSXhMT04xOEZydkF2T2Qwb29pTmdWeWNsdUs2YWlwSWJwUXBSb0Z2?=
 =?utf-8?B?UHNuendkVlZCUDJFRGc0cTFVVVlzTlBSL1ZjWFpHczlMNE9jaC9MVGxXeGNx?=
 =?utf-8?B?K3V1d0c5MjJQQWNKMjBjaVdXTjNCWUs0MmNCS01sYnFLd0xEVzYrL0ZzelJ3?=
 =?utf-8?B?bUlJOU5DUjdsYVFjZmNxekN1RGxGOTB0NERRL0tzOWs3am5UeGV6anlCY0l2?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: kie+WI3JuBoDCmCNkpsWWOnRhf+liXIE2Q88Z6tvjTaeKbeXZBACV3RtDYIcHU2MgdnHdy2kuLGK3Qtqg9uursra5LKeEuttA2BZ2qkotd3F9yaHWne5KgiNaPlNXNSwEzKlE8stS9yj7HX+rGJRH+Xlo692gUE8k4hcahzeDQoNxPRxl1UDJuz51nNDGcBRVBEFg4AJuv+F198reOU3O2WdGCoCfMe17/r1RBLhXkWo/lw8KSMqziS7Wjv7X3XOYCqBCmH4TWT4ieaeffwGWEvDrRCU5e9E1Xfwk+XlPnHD5x3py6jJboybZwDIUXskHguRt1fQF1AqOaypxNplNVDkZSMhfPOlUmOUsjLCNsshy4s+i5o70WgDPiR5d7lXKe84SAzkhYHBKz+0ZttfmWErUvglEJRwAZU8v0fNJ0oyeJyZT3N9+SEPLGrk8LdcLHgVlAqpP4mplDs6GrlP5ukMVZ7N3MUBDRM5ZJRDt0vZQpdWiOwhH0LMqYBygt7fDQaCddORTtGvCFyrlEOAhQGq4VXs7pO5p+Vx6Co5hrZciUB0hiaTRDTPXro8HOZBIHQIQ5gI/s7OG/YyBl0xV2TgyzCA7UTdkc/4NXDiW/oiw8tqo3GXzio7EB6jk6Zi841KVSIZ4mqaTkWZ0P3fQOpm0iHnfT1WwSaAWn0OUDFFHbEMCICah+VO4o6CpMXQJmZ3FXKdahamK6fZwK98OyclUDJwHsF4c0aKmLPepPCwMRA1uNzqCbx1Vrf7yPqch9BuFqvwQo2FeB8RnFmLag==
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca5df554-5a6f-4a7e-260f-08db77e01b0a
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2023 14:01:01.5174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tO4LgVwDovKyeOj/rostjD8huX1uG0oaUg/o3ncmWYSm3cHXRDzBHj3RMqetHzXhZ5LQt7EkrKDRDsrovIJB1ZqpFGF16pGLF15cTABzjAw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR10MB6660
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-28_09,2023-06-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 suspectscore=0
 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0 adultscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306280124
X-Proofpoint-GUID: ml91oO2B9Xgxk3a9b5vBp3_bM5L8PynH
X-Proofpoint-ORIG-GUID: ml91oO2B9Xgxk3a9b5vBp3_bM5L8PynH
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/28/23 8:46AM,
 Dr. David Alan Gilbert wrote: > * Dr. David
 Alan Gilbert (dave@treblig.org) wrote: >> * Tom Talpey (tom@talpey.com) wrote:
 >>> On 6/27/2023 9:14 PM, linux@treblig.org wrote: >>>> Fr [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qEVjL-000E0a-Fv
Subject: Re: [Jfs-discussion] [PATCH 0/3] dedupe smb unicode files
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 6/28/23 8:46AM, Dr. David Alan Gilbert wrote:
> * Dr. David Alan Gilbert (dave@treblig.org) wrote:
>> * Tom Talpey (tom@talpey.com) wrote:
>>> On 6/27/2023 9:14 PM, linux@treblig.org wrote:
>>>> From: "Dr. David Alan Gilbert" <linux@treblig.org>
>>>>
>>>> The smb client and server code have (mostly) duplicated code
>>>> for unicode manipulation, in particular upper case handling.
>>>>
>>>> Flatten this lot into shared code.
>>>>
>>>> There's some code that's slightly different between the two, and
>>>> I've not attempted to share that - this should be strictly a no
>>>> behaviour change set.
>>>>
>>>> I'd love to also boil out the same code from fs/jfs/ - but that's
>>>> a thought for another time (and harder since there's no good test
>>>> for it).
>>>>
>>>> Lightly tested with a module and a monolithic build, and just mounting
>>>> itself.
>>>>
>>>> This dupe was found using PMD:
>>>>     https://pmd.github.io/pmd/pmd_userdocs_cpd.html
>>>>
>>>> Dave
>>>>
>>>> Dr. David Alan Gilbert (3):
>>>>     fs/smb: Remove unicode 'lower' tables
>>>>     fs/smb: Swing unicode common code from server->common
>>>>     fs/smb/client: Use common code in client
>>>>
>>>>    fs/smb/client/cifs_unicode.c                  |   1 -
>>>>    fs/smb/client/cifs_unicode.h                  | 313 +-----------------
>>>>    fs/smb/client/cifs_uniupr.h                   | 239 -------------
>>>>    fs/smb/common/Makefile                        |   1 +
>>>>    .../uniupr.h => common/cifs_unicode_common.c} | 156 +--------
>>>>    fs/smb/common/cifs_unicode_common.h           | 279 ++++++++++++++++
>>>
>>> So far so good, but please drop the "cifs_" prefix from this new file's
>>> name, since its contents apply to later smb dialects as well.
>>
>> Sure.
> 
> Actually, would you be ok with smb_unicode_common ?  The reason is that
> you end up with a module named unicode_common  that sounds too generic.

I'd suggest make it generic and move it to fs/nls/. I'd run it by the 
nls maintainers, but I don't think there are any.

Shaggy

> 
> Dave
> 
>> Dave
>>
>>> Tom.
>>>
>>>>    fs/smb/server/unicode.c                       |   1 -
>>>>    fs/smb/server/unicode.h                       | 301 +----------------
>>>>    8 files changed, 298 insertions(+), 993 deletions(-)
>>>>    delete mode 100644 fs/smb/client/cifs_uniupr.h
>>>>    rename fs/smb/{server/uniupr.h => common/cifs_unicode_common.c} (50%)
>>>>    create mode 100644 fs/smb/common/cifs_unicode_common.h
>>>>
>> -- 
>>   -----Open up your eyes, open up your mind, open up your code -------
>> / Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \
>> \        dave @ treblig.org |                               | In Hex /
>>   \ _________________________|_____ http://www.treblig.org   |_______/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
