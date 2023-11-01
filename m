Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 726457DE26C
	for <lists+jfs-discussion@lfdr.de>; Wed,  1 Nov 2023 15:40:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qyCNu-00067V-Mx;
	Wed, 01 Nov 2023 14:39:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qyCNt-00067G-9q
 for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Nov 2023 14:39:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zdtXG436AgeexYLQWpFGAjWSL32BTbXI6YlHB03tlKw=; b=aKAnV5G0s8YV3i9QsgnijLcaMl
 uhg5bbHfgCVCqn8Y4ONf8EduomqcsxR3PLuB2Jhxy0c7VxnflMUgSUjiFVqToHDP1Cs7E91Y88Z07
 giomb2nHgx+5NIdv9jreEZAyO5nRhOyYqKZTzNL70O+ZswYGoi9iiiDwgHgd1e5D2jVI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zdtXG436AgeexYLQWpFGAjWSL32BTbXI6YlHB03tlKw=; b=PpXi2nnJJIdoqyIOMdew69+b0L
 2b09qt+HaErlWrLk8v/oB3J93sCcSViv10+miIRrqcKc1Y7qTbjop6zoQT2Hpg+jkU3B4HkciUpjV
 29yiHG64VbmEUbTNmrx2MaOLGIM8qPMN2VxbaZn3NWitbHPXe0R7WJh3qwLIGD7yf9Ak=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyCNo-0006Tm-7j for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Nov 2023 14:39:53 +0000
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 3A1AZxsm027738; Wed, 1 Nov 2023 14:39:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=zdtXG436AgeexYLQWpFGAjWSL32BTbXI6YlHB03tlKw=;
 b=G8X6KfHR0UBcYuhocKxlzHtD078ZKdfPK60Vt5PRaH4nSoO0x7WLWFpau1b2alVMaLvV
 u7CLgUmtc2ULQjLme36mlPNMdd+ysEhaT/6p64TTudshbbc3qnKPYMIcqQqVtmcswWCy
 pX6LwwSjQsH+zQpgxAZpoyy74MrAQ9wvYLXDXqxIwFFbCvyoCjGekvsqHhfX7XLe+kIN
 VuPFiYJIcPi4AVFLS4B4MwxrzGwRRv/X6hqqjgsmOg5iAbIJY1VuPD3i0YqrnO3wlr4v
 mZMtQh7j8szjmHK98x26RKCoN01somCMab97EvCJnPry5BTJemdysy3FWHmgL9KZgkDv UQ== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3u0s7byjhm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Nov 2023 14:39:33 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 3A1DlgGK020094; Wed, 1 Nov 2023 14:39:32 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3u0rrdbuah-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Nov 2023 14:39:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=atQYjadXO157mjRTwl7kJdBc63dWXkwUjlJLlwXBbOIpxkN3LmmtiL17wwsMVVV3rt6b8R9y8v6jHg/urGxqcQzOkJzd+q2wmX/vtSYiPB3B2y9qlPES1StMYEkLzh4rqK6BYErScGxUtLF+o+BzSt60zE+TNrE2ceJGgQdeimUElpQuUb04wAnjmSubzV7UXdl00Z/tF8M3rqD+MwF3kEHpBzzEQLWr0YGNiXrIC+fk8esoKHUvC6oFI5ZaIcLVdCDMialxCDUuVBctBfBogB4ajExpbixR5Ie7xsIdWoszfHjNuITSmBH0Qi/6tc4ShXC1HTiUlU9y4eCPWmiTwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zdtXG436AgeexYLQWpFGAjWSL32BTbXI6YlHB03tlKw=;
 b=NVTAv1kd9Py/Zb5UPohqh+k2M65QdJWB3302U/JDGdvWXnDFtLHAVj9rX8Z0cImHW1+EElu7Cb83ZugsBcLAXaUKLiYaisCwvWEjWPLYlIr7zq03vH9ywWu5Afo0atH/u8VxyY4jpCwLMcjyVN94Xbqhsda9pDfMPJIkwey1tLhIr6w5aU9rp1paJWwktLnEEVXGqyXYTTbTLP79O5kGsDLP3v51FzDYmljBPcR4uGkbr0ZkgIEcEPUNfL/xirTQkGhglKqoevxmtxIEdAHznmPU9bd9HZqSvGfn8KI/5KRNUu90ti4Kiix8/6ys9qRosaSFlhDDGrJQuLhRFKD4AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zdtXG436AgeexYLQWpFGAjWSL32BTbXI6YlHB03tlKw=;
 b=cL/JqehzzEiSdPfEdWWGZSmuwpwOoxAFCFMTW8EGnA2aVtG7JjNorgebivvTQ7QNAZI+JITDBoEp2MgQJwA8J/gtZKYizWsvQZ5cyZHi+tWyn7GrL2rykL22b8oV92gnlQxWQv47ZL9UCYWn8HbAvFA2CQ3aOm0PkImER7IUgH0=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA0PR10MB6819.namprd10.prod.outlook.com (2603:10b6:208:438::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.22; Wed, 1 Nov
 2023 14:39:28 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::a946:abb:59d6:e435]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::a946:abb:59d6:e435%4]) with mapi id 15.20.6933.022; Wed, 1 Nov 2023
 14:39:28 +0000
Message-ID: <b5f5acba-c93d-4a91-bfc6-abb0b572bbad@oracle.com>
Date: Wed, 1 Nov 2023 09:39:26 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Osama Muhammad <osmtendev@gmail.com>
References: <20231011184637.20587-1-osmtendev@gmail.com>
In-Reply-To: <20231011184637.20587-1-osmtendev@gmail.com>
X-ClientProxiedBy: CH2PR08CA0001.namprd08.prod.outlook.com
 (2603:10b6:610:5a::11) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA0PR10MB6819:EE_
X-MS-Office365-Filtering-Correlation-Id: eafc5295-e7d1-4605-98c8-08dbdae85a25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AMTeq0BFQsNX4grVZnMI6Gl8rqh9LyqhEMwsgqO+qFHy5XDzdKcXhL1+a4Lrhd3nltspcDd5Lxzn4NeaZvL6zeewRhNU96/L3Jb1ybH4Nmr4IS7VMbrGdcXXEm/qwodWsCRDA+B7oKcQJgGgr1DmQPa7KDLp88FnqleydPNAYPop9Arx+RNeDUe3UXX9DlVjvufEiAdY6DB/MTUfV/LfcAQla8FT8hv4vXMhKSo/P94qm8iVOFGZq3NTF8j3H2MU2Ro2j0KY1RH7Gr4zmkY5YGM7GaOcGPlX/3aNG6oFgKshB3RP3OYWKX444XEgLHxfkhjaWfTMpejF90mRe7c9nT8/hytrUKQhB7pqMZqdw57SlyGqyLY0xZJ7XI6uS6rNb8ZG3DSzo0Cf2EdN28mxkjEpTt/Hxs8Oo3IJ3BYybxg2vdmuh30tLKcFxdVILASj/5ftQUoeGOeQEuhbhD24ulucsW/rSBAYld9tjIvm99oOt79ReYIEG1+zTqQJ8rSa2ztcqg/I8kNJ9ZOL9px6T+C73NO45Lkewd30GQ4scRKyPvkKq8l5mPCVbMYwDVPaUid4NigSNmnmTM0AgPI800uUPEXGv8DMao041h3JQPoitKzwSo/PVTS1f1/kIbbx50V0wanCzy9UCPPB7ks/Gs3IQ/dJQdFf3WKlUwramDg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(39860400002)(376002)(346002)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(38100700002)(478600001)(83380400001)(6512007)(6506007)(31686004)(66946007)(966005)(2616005)(6486002)(26005)(316002)(66476007)(6916009)(8936002)(44832011)(4326008)(5660300002)(41300700001)(86362001)(2906002)(8676002)(36756003)(66556008)(31696002)(99710200001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MG93dlFUWFM2UGUwUGd1VloxeDVCa3E5WWgwR1hseHFjWTdxcXNSU1BCa3ds?=
 =?utf-8?B?VG4yQ1hnV0s4WkFWR2Y0a29iRFVPVnlsSk8zaFhXWGxWd3dlU24vc2E2VTY1?=
 =?utf-8?B?aGoxKzNoOTc0eld3RHRranJ4VnlLVDJpZ2pEa1UxTmpyckdKU2JWRUxmQm9H?=
 =?utf-8?B?aWh4U1luc3RKcEhFQTRXbnJRM2g2bnBNREFCd25ZNWlBQ0JCdUNtWW45QTAr?=
 =?utf-8?B?dHh2b0UxWWgrMVZzQXp4REpReks1OGFINTIrOU5BalIzWTlXU0c5OHRYbkZr?=
 =?utf-8?B?TStoN0tqMTRBVk1JY2ZyTlg0ejNhWko5akZDS0srL3B0L3Z2NDhaSHN0WlRP?=
 =?utf-8?B?cVpKUUt5N3prbEVMTi9mQVZXRDhYMVN4aXl5aHhFU3J3T0xLQWs2UjhXVndN?=
 =?utf-8?B?bmMxODI4czVqQ1MwQVNYSmp4eVNGRk1nUEdmVUgrbmdjNXcvV2NQMFZTbkZZ?=
 =?utf-8?B?VEw2WmlNYkxrTzM2SUk3cUZpYmJ1OHlUdDlqanR1NEI3UENiNFRkTW9ma2Vz?=
 =?utf-8?B?aVRDd2lrMGRZQ0ZmdG0rUGFpV2JBM3N3NjZJQ2ZIQlJCOHd5dHZ6M0tGOWZY?=
 =?utf-8?B?UUtoTUxtYVpma3k1dlJac2F5eXhhZE1mNDU5K29VZFRNdWUvV3o4eDZtNmlx?=
 =?utf-8?B?bjZaeVU2ZWF3Ly9wZmRBd09qVGhnVk5FdXlsUFpPQjlINGFCdFE4S0kyMmFE?=
 =?utf-8?B?cTBueCtxT29YbDVHelFrbGJLY3BlMld2WDNCWHhSY0FTMzJYU1AyYjlWbEZR?=
 =?utf-8?B?RFVtdGxoaUxTeUFvMkx0V2RsZUUrR3JVdnRjTU54MCtSUkZOd29xQjZMSUZ5?=
 =?utf-8?B?R0dwOFVaSUpVUW5reXFUb3FyYitFakdSSTdvK3g5ZHJ1S3E0VDVvM3pkRlBJ?=
 =?utf-8?B?TmxFWStSdzllRk9HejJ5azM5N1J5Qkg2WmFvVVp2VXBKaEU3TTNoSlB3cXBZ?=
 =?utf-8?B?T2gycHJsakozaGZlbjREaDVrWkZTek9NcXoyK09iVThyZmxJY0FtOE41RTBQ?=
 =?utf-8?B?ajV2a01CWUtVYVZwQzVQQWdrVndyZWwwa2hkWkNsTHZlZUZPcnUzaEpaSGhW?=
 =?utf-8?B?ZHl2d2pTbjNldmg0cXNLYXBTVU9RNStuZFZNR1Q0NTZ3T3h6TS9YcUR1bGxM?=
 =?utf-8?B?QXE3OXZrNUhYVzFyVlY1L0E2dVJIS2drSXI0L3B1ZFVzUklqb1NYK1FmbXNa?=
 =?utf-8?B?T082TWFnYUdOOHJsbHlKQXR6eGNTNkIwcE1wWUxoQVBKb0sxOWxKQ3ozOUto?=
 =?utf-8?B?aVMraWtPU3NuNzBCdUxJaUhsdjEvRFhsZ2xqM2ZZUkFBMklQRVpBRnBqcWtU?=
 =?utf-8?B?Z000UkdpUzRPTDF0UFRpKzlGWVNNK0Z4dFZoZDBUWkNLcVROSUQ3OVBGS0gz?=
 =?utf-8?B?cU9MbStLek1rbEU2NjBLZHhGWUdYLzJjakNXOVE2Lzk2ZEZSYytaL2VwVi9P?=
 =?utf-8?B?VDV6OXBsNnNzeWlBZXhuTDBxMXgzT2xaVUhBeTR2ck04cTlSVmxHR1hNRzRt?=
 =?utf-8?B?dWp5SnFwSTNwMklBMGlWYTN6ZlBXcDg1N2JYRStaM0ZFMCtaUlo3Q1hGYlNz?=
 =?utf-8?B?V0hFMUlNdXBuN0dyNWZ3ejJ3NFBQYnFOK21QZ0I1TnY0R0k0elJIMVJvSnlH?=
 =?utf-8?B?UXIvR29hbkk5S09NUncvZkVyTHM2aFBEcmM3THd4bkM2dmFrUnBKQlZiN09u?=
 =?utf-8?B?OEZ4MU5DOXlZeDBWekhJSE8wMW9oRnBIVUpvZzVTb3pqVlpJUkJjbWYrNkRk?=
 =?utf-8?B?SGYzK3MrTm1TeVphOGNUcDA4N0hzUm15QXl4Z1VQbENFb0hnTGZmVmlWdzVR?=
 =?utf-8?B?NTlCdWFVR1QyckRyTGNDMVUrMTFnTHp2QU14aHBJMkZSYzh3bitXQ1h5ekhv?=
 =?utf-8?B?Q1EzMUlSck9CL3pUSWkrNUJNckllVHl2SHRnUUppN3l1VDhsQlpRbXhoRnJJ?=
 =?utf-8?B?dUloWFFGRlVLQ29pNTJQa2hCNFlHUTZpTS84RzhPc3ZOTEJiM1lRM3R3b3dm?=
 =?utf-8?B?TjlVaG5kYndDYXRsemVBd0FkYWVNUXBhMXhITy9PTEZRd2Y4cE44aS94VXR2?=
 =?utf-8?B?b0NhZWd2Qm1jdUhtQkl3N1VkZm1maG9Fb3NZMVIwQTNteTVLRzlQUHN6Z0lw?=
 =?utf-8?B?RTBGNzNtUzRSdWxFbC9zRklRVllNZHZHMXZHTFdVb08ydnBZT0RuN1FPVWxr?=
 =?utf-8?B?cHc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: e5EFvNOzmjHVijolZ+vH3BMqGACF9OJv1KA6QX1cxV2ebnjCG93uUXvhPKMekEufD1ulHc6DrbvUPz45AuILCalingwd8h+olSpZ96wMKhaR8iCPl5wRmNNMwT3SX36yhi/u4sn1qYNS0fNh6y5ILRVHdiX7ViX4kz+J/9RVNNi0z4NfhuC0y62nhFvJCTvAjuE/IVjKvLYlumgBX1nmbVJo7aXAppMVmph3jJkHG1ZjQ+SRg0xxbVcT/uOms8zFVhx18nH35AKRZDEtgGtjFm4iUPbHZfjeEQarPvGCsvh4BVcCPZB80YkpHm3tjd1WopnHDfJIhtQEMed/Q4K1ULIY5HO25oRjVsAmC51J/KEpdcH7B3oYD3lISDAQrp6Nyd7r4BFSCzizngQWkjUxfW/ZxGMtjDtS+xy69tMdCRCK4+8kY4rj4c57n0TjheMCX4jbACquJwsJadLTYygTKXjZnVWmUHnixnC0UpoPs1nN39REkchYupsdyhmW8tmdZdV0Zgsi3WpPtlUhKvLJuXERt0qGth3PHLJQy1Y8/EhRkWnQpOwCJ0KkaRlNPYMAVGCdA3NgzP/i81KpFG6oBs1WlRGgbXXUAESKq9hQ1In9FFNnUdY6tJ5PvaYSJ7sQ0oWhByYXGBaMk6H1+qu7eKngZYsiLES/H24JoQL1wxoNA6zfX3CYcfkxeLFzuzwbPex0b6O8fDEC+aH30POfq0Y/YGakGWJ46Lnu/YAlr0PcxxX18s6NGlGD+BC8ahiP6f4mZrklMeZdwicWLGeaZBl2pCKbtx4Z+Z7MQ+1xnkv58GGDi5fyZs2FsnnpThbVn5e88iPWzJ8of2H5xHAOodbyEKjHsScxAcLaoef/Tm9olVUFhcfLsxlOToiFB3hy2gYY82cdUF550LXKCtog8mD+1QX1QA7xls+7oD5m8X4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eafc5295-e7d1-4605-98c8-08dbdae85a25
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2023 14:39:28.4206 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9QrMh0FcOzqrTs8xhOmDqo3qbbeQ4mMCOZGK+uZJqWn04Xa4SgMEerw/IOhWC4RVCXu/ExUepUTQ7Kv2PLVFizGy599tIWNoOZr6d+aZPfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR10MB6819
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-01_12,2023-11-01_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 spamscore=0
 phishscore=0 mlxlogscore=551 adultscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310240000
 definitions=main-2311010122
X-Proofpoint-GUID: nOywoxUnO0NJ3RL1I9E3vp8jH-RgivS7
X-Proofpoint-ORIG-GUID: nOywoxUnO0NJ3RL1I9E3vp8jH-RgivS7
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/11/23 1:46PM,
 Osama Muhammad wrote: > Syzkaller reported
 the following issue: > > UBSAN: array-index-out-of-bounds in
 fs/jfs/jfs_dmap.c:2867:6
 > index 196694 is out of range for type 's8[1365]' [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.165.32 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.165.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qyCNo-0006Tm-7j
Subject: Re: [Jfs-discussion] [PATCH] FS:JFS:UBSAN:array-index-out-of-bounds
 in dbAdjTree
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
From: Dave Kleikamp via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dave Kleikamp <dave.kleikamp@oracle.com>
Cc: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/11/23 1:46PM, Osama Muhammad wrote:
> Syzkaller reported the following issue:
> 
> UBSAN: array-index-out-of-bounds in fs/jfs/jfs_dmap.c:2867:6
> index 196694 is out of range for type 's8[1365]' (aka 'signed char[1365]')
> CPU: 1 PID: 109 Comm: jfsCommit Not tainted 6.6.0-rc3-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/04/2023
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:88 [inline]
>   dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
>   ubsan_epilogue lib/ubsan.c:217 [inline]
>   __ubsan_handle_out_of_bounds+0x11c/0x150 lib/ubsan.c:348
>   dbAdjTree+0x474/0x4f0 fs/jfs/jfs_dmap.c:2867
>   dbJoin+0x210/0x2d0 fs/jfs/jfs_dmap.c:2834
>   dbFreeBits+0x4eb/0xda0 fs/jfs/jfs_dmap.c:2331
>   dbFreeDmap fs/jfs/jfs_dmap.c:2080 [inline]
>   dbFree+0x343/0x650 fs/jfs/jfs_dmap.c:402
>   txFreeMap+0x798/0xd50 fs/jfs/jfs_txnmgr.c:2534
>   txUpdateMap+0x342/0x9e0
>   txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
>   jfs_lazycommit+0x47a/0xb70 fs/jfs/jfs_txnmgr.c:2732
>   kthread+0x2d3/0x370 kernel/kthread.c:388
>   ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
>   ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
>   </TASK>
> ================================================================================
> Kernel panic - not syncing: UBSAN: panic_on_warn set ...
> CPU: 1 PID: 109 Comm: jfsCommit Not tainted 6.6.0-rc3-syzkaller #0
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 08/04/2023
> Call Trace:
>   <TASK>
>   __dump_stack lib/dump_stack.c:88 [inline]
>   dump_stack_lvl+0x1e7/0x2d0 lib/dump_stack.c:106
>   panic+0x30f/0x770 kernel/panic.c:340
>   check_panic_on_warn+0x82/0xa0 kernel/panic.c:236
>   ubsan_epilogue lib/ubsan.c:223 [inline]
>   __ubsan_handle_out_of_bounds+0x13c/0x150 lib/ubsan.c:348
>   dbAdjTree+0x474/0x4f0 fs/jfs/jfs_dmap.c:2867
>   dbJoin+0x210/0x2d0 fs/jfs/jfs_dmap.c:2834
>   dbFreeBits+0x4eb/0xda0 fs/jfs/jfs_dmap.c:2331
>   dbFreeDmap fs/jfs/jfs_dmap.c:2080 [inline]
>   dbFree+0x343/0x650 fs/jfs/jfs_dmap.c:402
>   txFreeMap+0x798/0xd50 fs/jfs/jfs_txnmgr.c:2534
>   txUpdateMap+0x342/0x9e0
>   txLazyCommit fs/jfs/jfs_txnmgr.c:2664 [inline]
>   jfs_lazycommit+0x47a/0xb70 fs/jfs/jfs_txnmgr.c:2732
>   kthread+0x2d3/0x370 kernel/kthread.c:388
>   ret_from_fork+0x48/0x80 arch/x86/kernel/process.c:147
>   ret_from_fork_asm+0x11/0x20 arch/x86/entry/entry_64.S:304
>   </TASK>
> Kernel Offset: disabled
> Rebooting in 86400 seconds..
> 
> The issue is caused when the value of lp becomes greater than
> CTLTREESIZE which is the max size of stree. Adding a simple check
> solves this issue. I was not sure about error return as a function
> does not return. If there is something needed in that regard please
> do point out.

There isn't too much we can do here without a bit of a code reorg. Even 
the calling functions are void. We can't mark the filesystem dirty 
easily either because we don't have a way to get to the superblock from 
this function. I think I will change the test to
if (WARN_ON_ONCE(lp >= CTLTREESIZE))
for the lack of a better option.

Shaggy

> 
> The patch is tested via syzbot.
> 
> Reported-by: syzbot+39ba34a099ac2e9bd3cb@syzkaller.appspotmail.com
> Link: https://syzkaller.appspot.com/bug?extid=39ba34a099ac2e9bd3cb
> Signed-off-by: Osama Muhammad <osmtendev@gmail.com>
> ---
>   fs/jfs/jfs_dmap.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
> index a3eb1e826947..decb3be66a86 100644
> --- a/fs/jfs/jfs_dmap.c
> +++ b/fs/jfs/jfs_dmap.c
> @@ -2854,6 +2854,9 @@ static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
>   	/* is the current value the same as the old value ?  if so,
>   	 * there is nothing to do.
>   	 */
> +	if (lp >= CTLTREESIZE)
> +		return;
> +
>   	if (tp->dmt_stree[lp] == newval)
>   		return;
>   


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
