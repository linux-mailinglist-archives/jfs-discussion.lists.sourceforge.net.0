Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E40F73B916
	for <lists+jfs-discussion@lfdr.de>; Fri, 23 Jun 2023 15:49:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qCh9h-0007hP-Ss;
	Fri, 23 Jun 2023 13:48:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qCh9g-0007hJ-7U
 for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 13:48:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HJENYjy8gQ6JNU69cp+F64L85qRrIeKPYmYEmN57+Dk=; b=O454DThqUXewFZ5U8TpsQF4Nd5
 4Uaensy/S29NEdHDe8phtRdHHDEOQZ8p4NBEXXD9i12dj9Gle3mNAW8VAQguURDr1CK710JP6rfJY
 r1aV+KVD9XSCWKXpPfP4FIl3UpqdHsgpONgTCIgaOFlONxvEoM2+uUw8znvjz4vmXpAE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HJENYjy8gQ6JNU69cp+F64L85qRrIeKPYmYEmN57+Dk=; b=BrwB/hlmDv9nqmRYWnSMAfkca3
 WwsnI/xtGKFKQGdeksuV1og7iBMSsPGhJ1XO8c+8twpiURW7zKkRDrMcO+FD5OQjmTkx8uUDMEPF9
 SVpmj6aMJDTixwsP28x/PMtQJv7F12nljYWDzsgYn7WzR61ma7LPmSMHl7EbwxwiW84Q=;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qCh9X-0006s8-Gf for jfs-discussion@lists.sourceforge.net;
 Fri, 23 Jun 2023 13:48:51 +0000
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 35NCcD7A012620; Fri, 23 Jun 2023 13:48:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=HJENYjy8gQ6JNU69cp+F64L85qRrIeKPYmYEmN57+Dk=;
 b=wNcd3SLk/ccYw5lVN+DcKOfivl6cmMlhFXsuSb85U4AU3d799S+zK3IRCuhKQ0D+DgIL
 PBTIz1JPm2ywMmmkhNXELPam4d3T+Sp4kgmKPakAE+MWMlZPfPL+3+pIGl5o5OETssp/
 YWMcL0UxZ/uBik5nIjsJSz0JLaIj+TOmWqaVFbQvrvgyOfKsIh9mNBQ8Tv3TjnpFVWwR
 3PtQ3xwMKnCiJlyi5Au2zS5OSXC+a0RP8hP269sL5IsIIxaz7EZql9J8E4+96ZizYxdw
 T4aqSPPnlrV2WJ71AFMSzzysKCX5mhItS8yzny/VrB6EHgqIqpO95sKawKQqPELjRn3j VA== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3r938duyb6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Jun 2023 13:48:35 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 35ND1pmC005891; Fri, 23 Jun 2023 13:48:34 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam04lp2172.outbound.protection.outlook.com [104.47.73.172])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3r9398vttt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 23 Jun 2023 13:48:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WilAyWqRUycCL4MUsCvTz4hf8ZINwBnjrXdEO/mar0lBMyvs3iLOVTtf1Dskl08W9tzhPHF8sG2tZ4zYmsfTt2xy+MRRXJN7uPnL8rj9ki4JijQggRX7YkFiJ7oeJjRqvI1m6FibNyJ2Jkq+qUWFdA86Lqt8KR4W1cRF8csgkiaO9tYsO/m7hnGSaIaz2ZYfDSh5QxM8kuoSBYB979l5KfDPe7VyBGeAmnSda5P9K59Xicn7waWJWlSsFqLakxJF1S+F0Xd/j5Sw7WJJMwRvH59zaQZacJZBwZlfyeHwhu1ux4GXcfMrR900ifBb2szMS2pTZtEN8bV5DwhG9HPOLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJENYjy8gQ6JNU69cp+F64L85qRrIeKPYmYEmN57+Dk=;
 b=iZ428MNna14zl9yDHYNh9ToKjOCgWjSaN6pW3v1tGer3bGUqb4oNYc5WkBlsT91iWtkJMqAfOOU75tkXrtmjtakLTt31nTbMqzY5GjEi+ybdcdqIdSxMbbC5P4VfGXtVFrSBVMsHXTEat8iBTQGJ73r6mLhNJLgAuAOJYH+WJ/WVPeNkbZ8P/EWY1wNeDWS1GzchhSuxFCzNUgPPUBXICJ19gQd99jeEH5OKdFwCcD+LHjI+iqsbA+hFJsFuvDtEABtOjsl9mIROCh4O48rOfQywe6E7ZA1Zyo+tm9SErscbiLbFJnBFqlW6Uw/SDhJ3GV5cOcW5mkpb6r0d361ptA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HJENYjy8gQ6JNU69cp+F64L85qRrIeKPYmYEmN57+Dk=;
 b=nvof3l8DWhrVCjWKW+q4EI52sPwLambZ6rrn5FrAuctuonoLij+Sr6nznmC5vrcOMqHrnIZYNJLqf/DGVkjgOu7BH0wpsOzYyP7ugN5vX+0bOCWa43GliN2ygdbaASe4EHzXKOv+5pTeHeXRq/pRs0bPuflM0DwJnAGkrCP5neQ=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by IA1PR10MB6220.namprd10.prod.outlook.com (2603:10b6:208:3a3::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.35; Fri, 23 Jun
 2023 13:48:08 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::9c17:d256:43b9:7e96]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::9c17:d256:43b9:7e96%5]) with mapi id 15.20.6521.023; Fri, 23 Jun 2023
 13:48:08 +0000
Message-ID: <8deb3ffd-bdca-e85b-433a-9aeb93c00ec4@oracle.com>
Date: Fri, 23 Jun 2023 08:48:05 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: Immad Mir <mirimmad17@gmail.com>
References: <CY4PR1801MB1910F3DE3B29710C1D7A9226C68A9@CY4PR1801MB1910.namprd18.prod.outlook.com>
 <CY5PR12MB64551AB18AB4DB2D3F1CA5A9C65DA@CY5PR12MB6455.namprd12.prod.outlook.com>
 <a0493c88-358a-9d77-110a-18449314193b@oracle.com>
 <CAJfv2=A-b7yVtNA_T2kYyk_xK_suWrVX=gC3b+Am4LmNmvq02A@mail.gmail.com>
From: Dave Kleikamp <dave.kleikamp@oracle.com>
In-Reply-To: <CAJfv2=A-b7yVtNA_T2kYyk_xK_suWrVX=gC3b+Am4LmNmvq02A@mail.gmail.com>
X-ClientProxiedBy: CH0PR13CA0019.namprd13.prod.outlook.com
 (2603:10b6:610:b1::24) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|IA1PR10MB6220:EE_
X-MS-Office365-Filtering-Correlation-Id: 57f68019-a828-4011-d721-08db73f07a28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 39Al/om86eIYYf4zi1M4/DYUEs2c5Pli3EgLu93aSHvuCUNOWhCEdh1UbVy+ScVtfn8LV/2E/8Mkd/OZhg6liZdtCYFuj7+tgtj0X9lvXR+sJFxBm7QbdjsCGr1Ua6aVERQ2jFEm54YPn821BuKizWosWB63i5R2h4vLsIcieOuDoF9DFCtsmUrKcIq7xxlejDu5zRhKUvEnn0R9hkA/S+8Q6biTCkfcQJSdRDk1Vkg/jblzGvgbXY86ab6hcsttUydcUm1k10mi8bl5eBGCVDO+1sXa9h0DJ6T7KwHLAx//1BbAEA5t3HcrcFfNjC87RIH3da4zCNLFhLa6AabEjTKdiAApFcuDumG/c9dEeWLhiLoL1glo46ECf5awcb9CeYf1gtf3r5aOiut3IWwwX1kZfTVP1Z6Z5dex1e8wBDIz1HYgxSJeGjydd/jol39aytLmWWx1jqx8M2st/7xOo50c1pkXA906NtGUBewWd/KIbBppiT0mwTk1egBEaxDjRcsm5ABQg5ZhEoQzF215Tt/yH06McJjNoi32xl6MdCNh3/H/SiDhEwNjQdPG2/fhTotvNLh+PzqYi58NkSI6fF1BaWYg9hOkkbAkWXr4hRAKVMTsRGgvVtoaKDSyXMGJV19OAVAiXIUz1Fsmj5dvQCCPf9CjIWShfE7u1at8NvA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(366004)(376002)(346002)(451199021)(66556008)(2906002)(54906003)(4326008)(316002)(44832011)(41300700001)(31686004)(66476007)(6916009)(66946007)(6666004)(478600001)(45080400002)(26005)(6486002)(5660300002)(8936002)(6506007)(186003)(6512007)(8676002)(2616005)(83380400001)(38100700002)(966005)(31696002)(86362001)(36756003)(99710200001)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dERXUEhYN0FTaVcxa09yaUdPRE1WdU1MTGJkb0Y2cy9mdWJKc0Z6dWovTHdj?=
 =?utf-8?B?dDYxa1BoM2tyTFZHbThDN3RCTjhrOWNlVEF2U2tNZ3FMMnFERk4zbFlQS2Nl?=
 =?utf-8?B?VnpsQlVHNEdtRTBoSDJoQmdlK2dxL2R3cTl4TkNKWjdYQmRRY0VWZUNVYnl2?=
 =?utf-8?B?MjRtWkVLai8zYkxmKzdQeFdiV1pPczN3S29Ucno4d3VvV3Fsd1FNb24xMGIx?=
 =?utf-8?B?eFdaSTYwUTRFK0NJOGd1K2ltWjZvM01GN0RWVUZjVDFCcDZwa0NRczZ4RDJz?=
 =?utf-8?B?Y1AxZ3BXY3poVzZSZXR6UkFjVjQvSU9wUXNzN2cySFVBeFUycGkzVC82MllC?=
 =?utf-8?B?cHlqSnprcnpPNmJOeDFZRGpLUWlRZEx2dENZeVFLUkFVdGFTVUVHS3Qwdy82?=
 =?utf-8?B?amZ1YWwyQ2M0SmxQVnBCaXUveUh2QjcyTVRQN0J1S1lpVVFGUEpZeFQyNHFz?=
 =?utf-8?B?S1I5QXErYVF4THB2RTlGcmlKN21hbk5Ma2N2cnJway91U3BwSGxlMGhtWmRF?=
 =?utf-8?B?K3kvRTE1eUxDY1ZYTDlDZnVERHh3anozOXNtUmJ5VnJFUUxQQXdkZlR1OUQ0?=
 =?utf-8?B?V0RLVWdwTlRuTzZ5anRBdWtjV1IrTDA3RzVGYWxGd09KcExwM0pMRHZZZnds?=
 =?utf-8?B?b1F3bDBlT3BVQ2FPN2Q1NlNLdlBIczJpOXNjdnlHS0EzN2hGb1hCWFFaMGc4?=
 =?utf-8?B?N1F1bVBEMS8ya0RCT0RBbnFzajY0b2p1TDBCSkZIVEllZ1V0Mnl5bjNHNDRD?=
 =?utf-8?B?dDZLWVRvMGJpaDQ4TDRTU0RQY3FVbzZoR0J5cU1ZNWxHWnVpMDFpUXVlY1BR?=
 =?utf-8?B?b2hPU25qclgzdzRHTS9oLytJbjhxZlUyN2RKdkhkeVplK1h4V2tUaG5YYk53?=
 =?utf-8?B?QTNBTk9UcFMyQU81RDRINWJxcldjWU9MMUttRS9rYytmNGlaRTRqMjczaERS?=
 =?utf-8?B?MEFSWlpNNWwwQ3orOEF6djlRU3B1c0dpRnB4ZTdiZU5MOTJIUUtUL0F3ZVRE?=
 =?utf-8?B?Z3lYRm5ZckpOamNVQU5xa3oyRmVxRElYRTBML1djbFgxOGRpbDNuQmVXcHVw?=
 =?utf-8?B?VzErS0l2d3VCOEFOVUVFcEdVNUN5ZTlwZEljaDREQlBDSTVZcDhTaXpudUFI?=
 =?utf-8?B?eWpBRzh0bzg4ZkRPYmhWSThmMyt2bE05SGZjbE5qa2pTd1d3aXVUUzlyZ1VN?=
 =?utf-8?B?aEdIdVNxakM5N3l6OUNHZlFZa1ZPMVMyN2lUbnNzWXhIai9iSVNMVXU1Y1VU?=
 =?utf-8?B?djhHVWFramhneVdYVHM0RmxDc3hodkhDZ011QUVWRFdqT1UvTVlKTm8rcUwr?=
 =?utf-8?B?UFBtaUZPVU5JVWNGa0htSXNmYXlGRVVHNEtvUnowOWRKQVZJZEk1cnBYeVc5?=
 =?utf-8?B?V2d5d0NSeDdGTmxHOEhpdTYydGRvRk5zYjFqWGhlTHhjYXVUOXVBVytxNFFu?=
 =?utf-8?B?bEc4VUVvc0Nsd3hvenFWQUFsYWUyK2piVWlqU3NOSGN0NHNzLzUrcjB1TkVL?=
 =?utf-8?B?TlI1R01pSzQrTjl4eHluS1dMT2o1NWxJQlh0UHAyU1BQQTMyYjhZbkJQMVVK?=
 =?utf-8?B?TktYUElXME1FbEpTSTN6MFdpeDJRck5vYzZFZS9XTFNOS3FSMVppSVdDVHZZ?=
 =?utf-8?B?UU1DTmRIVnlkK0NuSTBKMC9wTnJVc1pwcVUxVGFRaUd0NUV6VWxHSFRyNTM1?=
 =?utf-8?B?dVdIeDFhQWxhVVJVYTFURVZ6UmNrRG5wY2Y0VHltb1Fydkk1TVhDYkJIOVYx?=
 =?utf-8?B?MWFlZ0NVdWZZaGZIeC9ETzVabVE4R1hTbzZvOGh1TlBISVB3UGJPRWN0ZjdD?=
 =?utf-8?B?ekJ0clphY0Q2Wi9nd2FRVEFubmxrUXZCWHROSzh1OHVCQkFhMUxWb0tIcGRR?=
 =?utf-8?B?WFkxMmxqeUcrVFFWNmZDV2JNY2RnZkkyRmdoMHdSM2NHaklOc2hLR3VBSWhF?=
 =?utf-8?B?VzNkUmdoTFZwcEhpejl3N3VaS3ZjWGpLcTNML3V6NDVBKzNkY0pEVlVVelN5?=
 =?utf-8?B?MEZEZ0lOQnZVb3NYMHhvejk2K3VPaVhVS2luUHNDbHQvdjROVVZJL0NOZEJG?=
 =?utf-8?B?YWZXUUxQMVhFQ2FsTHRnQllLTDBuRlhxSHRHMmFLc0lSVjhUS3dSZjNlbUMy?=
 =?utf-8?B?ZlQyaTJrcG44eHhGOFNBSE5yVzVwbmJBcFJiQkpLZGxnQXhKZWRSaCtJbG9M?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?dkIzQ0tyYWxJRFdRbXM2VEhLVGhiQnllcVZPeWlKOG15RkpySHRBaGNyNWs3?=
 =?utf-8?B?ZGFzVzRFSkYvaVpyYlNkK2NLSnVkcnovdVovOElPYituWW5UbittZk5pRGhh?=
 =?utf-8?B?bjRZYmpkMVBUY2NVZURZOWFwRkFHQzFhbjdhZTkvYWZ0cTM3YkVwK2g0elpU?=
 =?utf-8?B?cEF5Sm9yT254N043VE8zZ3E2Vk1xQldwamc2VzVSMHZPdG1TK1pqL1hBTDVL?=
 =?utf-8?B?dytyVC82RThGT1ZLTGJMVTB5TmhqMTFUVER3ZDZnNG5sTmc0TkxQTVYvU1Ft?=
 =?utf-8?B?ZjkvQ2dPNnZHVHhDOUY5UGFIMk1SYXUwZlJDcmlUYWNMTzYyWmhTL0FXSDVP?=
 =?utf-8?B?SXprSTQyRGE2eFMySjJCOUJTNlQ3cXpuUytmeTVEVElrZk44VTUzQTBuOTZ5?=
 =?utf-8?B?bCtnaDVHR1J3MkdDaXZSa05LRDAvd0w2Y25YMmwxYkZzSUNPbjl5aktoOVlP?=
 =?utf-8?B?NzVGdU0vQlN6bU9tV25LSlhzSTJsSkUwcU1jam5sSVdXS216aE0yYzJhVVJx?=
 =?utf-8?B?VHJZRXBiRW5MUXIzdDRNYVZpeWhpL1hDWk55WkorT00rNGhMVEFXZ29SMEFJ?=
 =?utf-8?B?M1hmUDBhV0o5UEs1Q05Eb0RtV2IvZk9NUXFTNGVwTitTVEFtODF0bW5PQk1m?=
 =?utf-8?B?SzlaRngzTmpEVWJ4ZUh3ZmJwWll5WVhycWwzajBDQ3FGWERBZDlxY1N2c0w0?=
 =?utf-8?B?ckltNldaNjF1RUU0ek9OdzEwejM0cyt1a01iMWpWeU9YVFEwaTR3OVZ1dFVs?=
 =?utf-8?B?cy8xT1FBQmt6RHBvOCsxTjBMQ1V2bU5nbXhaWUNrZTVjcWJRNjlnSkhHL3R6?=
 =?utf-8?B?N2c2TlpjRjEwbjVDcFpnREZMSFdyVWdWTFhRbGRlSDI3WUNkWHkxMFVHQ3l4?=
 =?utf-8?B?KzNkMkIyZFdDTXFGdThzUVU0SDhadndFQkZvSHNZc0xXQ0E2UzRKNERicHpJ?=
 =?utf-8?B?RCtVMGR2bWZCN1cwVHppd29MbWp1MHF4bHNtYmN4OVlxbGFLOVd5VXIvbjlq?=
 =?utf-8?B?Q3BBRnIzbFJXODRMWEkzcTV3MFZFRXU1SjV5VkNWU3RLcm45cUxITnRMUy9X?=
 =?utf-8?B?b2Nld0U2YURnQmViMGRrUlpRMGw4UFFvYVpDNkZ1L2xmVU9zUit4ak55L1l1?=
 =?utf-8?B?Q2h1MU9zZyt2S1NENWlxTElXdTJ3NGtya2pmcm9ldEtHWTFCQk1FcWJTWkNM?=
 =?utf-8?B?WWxHTzVoNWx4ZkJ5SkFVbEZQTGRtODF0MmJLaFFabzZQaUFhRlUrYytYVGQ1?=
 =?utf-8?B?cmE2WHI3ZzY5WUY4cy8vaTlOU0ZhM3VWZ3BkdWU2TWxaYnJPYUpRQ2g5eGZt?=
 =?utf-8?Q?QoUaGAAV6R/i7epCGYAqZo0TEwDjh0OJl7?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57f68019-a828-4011-d721-08db73f07a28
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2023 13:48:08.3177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5M7Y/ONsKcMhXEprxXYujNfzGVPOZJgVs1K6ivGFpuegMiVZQUFP1U5Qdm62z+qh0qTIXYaK1OnQLQEgsaizhwTjQxXDKAeC/2vjzVGFeME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR10MB6220
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-23_07,2023-06-22_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 spamscore=0 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306230126
X-Proofpoint-GUID: 8F0wKyi1a-WWGUCpW6VPSP6WFo9N1cHm
X-Proofpoint-ORIG-GUID: 8F0wKyi1a-WWGUCpW6VPSP6WFo9N1cHm
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 6/23/23 8:40AM,
 Immad Mir wrote: > Thanks for the feedback.
 I've prepared two patches to fix the bug. > > >Does this test case attempt
 to remount a read-only file system as > read-write? I see a po [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [205.220.177.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [205.220.177.32 listed in wl.mailspike.net]
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
X-Headers-End: 1qCh9X-0006s8-Gf
Subject: Re: [Jfs-discussion] [PATCH] FS: JFS: Fix null-ptr-deref Read in
 txBegin
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
Cc: "syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com"
 <syzbot+f1faa20eec55e0c8644c@syzkaller.appspotmail.com>,
 "jfs-discussion@lists.sourceforge.net" <jfs-discussion@lists.sourceforge.net>,
 Immad Mir <mirimmad@outlook.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gNi8yMy8yMyA4OjQwQU0sIEltbWFkIE1pciB3cm90ZToKPiBUaGFua3MgZm9yIHRoZSBmZWVk
YmFjay4gSSd2ZSBwcmVwYXJlZCB0d28gcGF0Y2hlcyB0byBmaXggdGhlIGJ1Zy4KPiAKPiAgPkRv
ZXMgdGhpcyB0ZXN0IGNhc2UgYXR0ZW1wdCB0byByZW1vdW50IGEgcmVhZC1vbmx5IGZpbGUgc3lz
dGVtIGFzIAo+IHJlYWQtd3JpdGU/IEkgc2VlIGEgcG90ZW50aWFsIGJ1ZyB0aGVyZS4KPiBJJ20g
bm90IHJlYWxseSBzdXJlIGFib3V0IHRoaXMuCj4gCj4gID4gU2hvdWxkIGJlIHNldHRpbmcgcmMg
dG8gYW4gZXJyb3IgaGVyZS4gSSBzdWdnZXN0IC1FUk9GUywgYnV0IGFueXRoaW5nIAo+IGlzIGJl
dHRlciB0aGFuIHJldHVybmluZyB6ZXJvLiBDYWxsaW5nIGpmc19lcnJvcigpIG1pZ2h0IGFsc28g
YmUgaW4gCj4gb3JkZXIsIGFzIHRoYXQgd291bGQgZXhwbGljaXRseSBtYXJrIHRoZSBmaWxlIHN5
c3RlbSB0byByZWFkLW9ubHkuIChUaGUgCj4gZGVmYXVsdCBiZWhhdmlvciBhdCBsZWFzdC4pCj4g
Cj4gSSd2ZSBpbmNvcnBvcmF0ZWQgeW91ciBzdWdnZXN0ZWQgY2hhbmdlcy4KPiAKPiAgPiBJdCdk
IGJlIG5pY2UgaWYgd2UgY291bGQgbW92ZSB0aGUgY2hlY2sgdG8gdHhCZWdpbigpLCBidXQgaXQg
aXMgCj4gYXNzdW1lZCB0byBhbHdheXMgc3VjY2VlZCwgc28gdGhlcmUncyBubyBnb29kIGVycm9y
IHJlY292ZXJ5IHRoZXJlIAo+IHdpdGhvdXQgY2hhbmdpbmcgYWxsIG9mIHRoZSBjYWxsZXJzLiBN
YXliZSB3ZSBjYW4gY2FsbCBqZnNfZXJyb3IoKSB0aGVyZSAKPiBpbiBjYXNlIHdlIGdldCB0aGVy
ZSBmcm9tIGFub3RoZXIgc3lzY2FsbC4KPiAKPiBJIGFtIG5vdCBzdXJlIHdoYXQgdG8gZG8gaGVy
ZS4gSSBhbSBjYWxsaW5nIGpmc19lcnJvciBhbmQgcmV0dXJuaW5nIDAgCj4gd2hpY2ggaXMgbm90
IHdoYXQgdGhlIGNhbGxlciB3b3VsZCBleHBlY3QuCgpqZnNfZXJyb3IgcmV0dXJucyB2b2lkLiBX
aGF0IGl0IGRvZXMgaXMgbWFyayB0aGUgc3VwZXJibG9jayBkaXJ0eSBhbmQgCmVpdGhlciBwYW5p
Y3MsIG1hcmtzIHNldHMgdGhlIGZpbGVzeXN0ZW0gcmVhZC1vbmx5LCBvciBkb2VzIG5vdGhpbmcg
CmVsc2UsIGRlcGVuZGluZyBvbiBhIG1vdW50IGZsYWcgd2hpY2ggSSBkb3VidCBhbnlvbmUgdXNl
cywgc28gdGhlIApkZWZhdWx0IGFjdGlvbiBpcyB0byBzZXQgaXQgcmVhZC1vbmx5LiBZb3Ugc3Rp
bGwgaGF2ZSB0byBzZXQgYSByZXR1cm4gCmNvZGUsIGV0Yy4gYWZ0ZXIgY2FsbGluZyBpdC4KCkkn
bSBzb3JyeSBJIHdhc24ndCBtb3JlIHNwZWNpZmljIHRoZSBmaXJzdCB0aW1lLgoKPiAKPiBUaGFu
a3MsCj4gSW1tYWQuCj4gCj4gCj4gT24gVGh1LCBKdW4gMjIsIDIwMjMgYXQgODozOOKAr1BNIERh
dmUgS2xlaWthbXAgPGRhdmUua2xlaWthbXBAb3JhY2xlLmNvbSAKPiA8bWFpbHRvOmRhdmUua2xl
aWthbXBAb3JhY2xlLmNvbT4+IHdyb3RlOgo+IAo+ICAgICBPbiA2LzIwLzIzIDEwOjUzUE0sIElt
bWFkIE1pciB3cm90ZToKPiAKPj4KPj4KPj4gICAgIEhpLiBNYXkgSSBwbGVhc2UgcmVxdWVzdCBh
IHJldmlldyBvbiB0aGlzIHBhdGNoLgo+IAo+ICAgICBTb3JyeSBmb3IgdGhlIGRlbGF5LiBTZWUg
YmVsb3cuCj4gCj4+Cj4+ICAgICBUaGFua3MsCj4+ICAgICBJbW1hZAo+Pgo+PiAgICAgLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4+ICAgICAqRnJvbToqIG1pcmltbWFkQG91dGxvb2suY29tIDxtYWlsdG86bWly
aW1tYWRAb3V0bG9vay5jb20+Cj4+ICAgICA8bWlyaW1tYWRAb3V0bG9vay5jb20+IDxtYWlsdG86
bWlyaW1tYWRAb3V0bG9vay5jb20+Cj4+ICAgICAqU2VudDoqIFN1bmRheSwgTWFyY2ggMjYsIDIw
MjMgOTo1MToxNSBQTQo+PiAgICAgKkNjOiogbWlyaW1tYWRAb3V0bG9vay5jb20gPG1haWx0bzpt
aXJpbW1hZEBvdXRsb29rLmNvbT4KPj4gICAgIDxtaXJpbW1hZEBvdXRsb29rLmNvbT4gPG1haWx0
bzptaXJpbW1hZEBvdXRsb29rLmNvbT47Cj4+ICAgICBza2hhbkBsaW51eGZvdW5kYXRpb24ub3Jn
IDxtYWlsdG86c2toYW5AbGludXhmb3VuZGF0aW9uLm9yZz4KPj4gICAgIDxza2hhbkBsaW51eGZv
dW5kYXRpb24ub3JnPiA8bWFpbHRvOnNraGFuQGxpbnV4Zm91bmRhdGlvbi5vcmc+Owo+PiAgICAg
SW1tYWQgTWlyIDxtaXJpbW1hZDE3QGdtYWlsLmNvbT4gPG1haWx0bzptaXJpbW1hZDE3QGdtYWls
LmNvbT47Cj4+ICAgICBzeXpib3QrZjFmYWEyMGVlYzU1ZTBjODY0NGNAc3l6a2FsbGVyLmFwcHNw
b3RtYWlsLmNvbQo+PiAgICAgPG1haWx0bzpzeXpib3QrZjFmYWEyMGVlYzU1ZTBjODY0NGNAc3l6
a2FsbGVyLmFwcHNwb3RtYWlsLmNvbT4KPj4gICAgIDxzeXpib3QrZjFmYWEyMGVlYzU1ZTBjODY0
NGNAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbT4KPj4gICAgIDxtYWlsdG86c3l6Ym90K2YxZmFh
MjBlZWM1NWUwYzg2NDRjQHN5emthbGxlci5hcHBzcG90bWFpbC5jb20+Owo+PiAgICAgRGF2ZSBL
bGVpa2FtcCA8c2hhZ2d5QGtlcm5lbC5vcmc+IDxtYWlsdG86c2hhZ2d5QGtlcm5lbC5vcmc+Owo+
PiAgICAgamZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4+ICAgICA8bWFpbHRv
Ompmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldD4KPj4gICAgIDxqZnMtZGlzY3Vz
c2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQ+Cj4+ICAgICA8bWFpbHRvOmpmcy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldD47Cj4+ICAgICBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwu
b3JnIDxtYWlsdG86bGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZz4KPj4gICAgIDxsaW51eC1r
ZXJuZWxAdmdlci5rZXJuZWwub3JnPiA8bWFpbHRvOmxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5v
cmc+Cj4+ICAgICAqU3ViamVjdDoqIFtQQVRDSF0gRlM6IEpGUzogRml4IG51bGwtcHRyLWRlcmVm
IFJlYWQgaW4gdHhCZWdpbgo+Pgo+PiAgICAgRnJvbTogSW1tYWQgTWlyIDxtaXJpbW1hZDE3QGdt
YWlsLmNvbT4gPG1haWx0bzptaXJpbW1hZDE3QGdtYWlsLmNvbT4KPj4KPj4gICAgIHN5emthbGxl
ciByZXBvcnRlZCB0aGUgZm9sbG93aW5nIGlzc3VlOgo+Pgo+PiAgICAgQlVHOiBLQVNBTjogbnVs
bC1wdHItZGVyZWYgaW4gaW5zdHJ1bWVudF9hdG9taWNfcmVhZAo+PiAgICAgaW5jbHVkZS9saW51
eC9pbnN0cnVtZW50ZWQuaDo3MiBbaW5saW5lXQo+PiAgICAgQlVHOiBLQVNBTjogbnVsbC1wdHIt
ZGVyZWYgaW4gX3Rlc3RfYml0Cj4+ICAgICBpbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9pbnN0
cnVtZW50ZWQtbm9uLWF0b21pYy5oOjE0MSBbaW5saW5lXQo+PiAgICAgQlVHOiBLQVNBTjogbnVs
bC1wdHItZGVyZWYgaW4gdHhCZWdpbisweDEzMS8weDZjMAo+PiAgICAgZnMvamZzL2pmc190eG5t
Z3IuYzozNjYKPj4gICAgIFJlYWQgb2Ygc2l6ZSA4IGF0IGFkZHIgMDAwMDAwMDAwMDAwMDA0MCBi
eSB0YXNrIHN5ei1leGVjdXRvci4wLzUwOTgKPj4KPj4gICAgIENQVTogMCBQSUQ6IDUwOTggQ29t
bTogc3l6LWV4ZWN1dG9yLjAgTm90IHRhaW50ZWQKPj4gICAgIDYuMy4wLXJjMy1zeXprYWxsZXIt
MDAwMDUtZzdkMzE2NzdiYjdiMSAjMAo+PiAgICAgSGFyZHdhcmUgbmFtZTogR29vZ2xlIENvbXB1
dGUgRW5naW5lL0dvb2dsZSBDb21wdXRlIEVuZ2luZSwgQklPUwo+PiAgICAgR29vZ2xlIDAzLzAy
LzIwMjMKPj4gICAgIENhbGwgVHJhY2U6Cj4+ICAgICDCoDxUQVNLPgo+PiAgICAgwqBfX2R1bXBf
c3RhY2sgbGliL2R1bXBfc3RhY2suYzo4OCBbaW5saW5lXQo+PiAgICAgwqBkdW1wX3N0YWNrX2x2
bCsweDFlNy8weDJkMCBsaWIvZHVtcF9zdGFjay5jOjEwNgo+PiAgICAgwqBwcmludF9yZXBvcnQr
MHhlNi8weDU0MCBtbS9rYXNhbi9yZXBvcnQuYzo0MzMKPj4gICAgIMKga2FzYW5fcmVwb3J0KzB4
MTc2LzB4MWIwIG1tL2thc2FuL3JlcG9ydC5jOjUzNgo+PiAgICAgwqBrYXNhbl9jaGVja19yYW5n
ZSsweDI4My8weDI5MCBtbS9rYXNhbi9nZW5lcmljLmM6MTg3Cj4+ICAgICDCoGluc3RydW1lbnRf
YXRvbWljX3JlYWQgaW5jbHVkZS9saW51eC9pbnN0cnVtZW50ZWQuaDo3MiBbaW5saW5lXQo+PiAg
ICAgwqBfdGVzdF9iaXQKPj4gICAgIGluY2x1ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2luc3RydW1l
bnRlZC1ub24tYXRvbWljLmg6MTQxIFtpbmxpbmVdCj4+ICAgICDCoHR4QmVnaW4rMHgxMzEvMHg2
YzAgZnMvamZzL2pmc190eG5tZ3IuYzozNjYKPj4gICAgIMKgamZzX2xpbmsrMHgxYWMvMHg1ZTAg
ZnMvamZzL25hbWVpLmM6ODAyCj4+ICAgICDCoHZmc19saW5rKzB4NGVkLzB4NjgwIGZzL25hbWVp
LmM6NDUyMgo+PiAgICAgwqBkb19saW5rYXQrMHg1Y2MvMHg5ZTAgZnMvbmFtZWkuYzo0NTkzCj4+
ICAgICDCoF9fZG9fc3lzX2xpbmthdCBmcy9uYW1laS5jOjQ2MjEgW2lubGluZV0KPj4gICAgIMKg
X19zZV9zeXNfbGlua2F0IGZzL25hbWVpLmM6NDYxOCBbaW5saW5lXQo+PiAgICAgwqBfX3g2NF9z
eXNfbGlua2F0KzB4ZGQvMHhmMCBmcy9uYW1laS5jOjQ2MTgKPj4gICAgIMKgZG9fc3lzY2FsbF94
NjQgYXJjaC94ODYvZW50cnkvY29tbW9uLmM6NTAgW2lubGluZV0KPj4gICAgIMKgZG9fc3lzY2Fs
bF82NCsweDQxLzB4YzAgYXJjaC94ODYvZW50cnkvY29tbW9uLmM6ODAKPj4gICAgIMKgZW50cnlf
U1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4NjMvMHhjZAo+Pgo+PiAgICAgVGhlIGlzc3VlIGNh
biBiZSByZXNvbHZlZCBieSBjaGVja2luZyB3aGV0aGVyZSAibG9nIgo+PiAgICAgZm9yIGEgZ2l2
ZW4gc3VwZXJibG9jayBleGlzdHMgaW4gdGhlIGpmc19saW5rIGZ1bmN0aW9uCj4+ICAgICBiZWZv
cmUgYmVnaW5uaW5nIGEgdHJhbnNhY3Rpb24uCj4gCj4gICAgIEknbSBub3Qgc3VyZSBob3cgd2Ug
Z290IGhlcmUuIGxvZyBzaG91bGQgb25seSBiZSBudWxsIGlmIHRoZSBmaWxlCj4gICAgIHN5c3Rl
bSBpcyBtb3VudGVkIHJlYWQtb25seS4gRG9lcyB0aGlzIHRlc3QgY2FzZSBhdHRlbXB0IHRvIHJl
bW91bnQKPiAgICAgYSByZWFkLW9ubHkgZmlsZSBzeXN0ZW0gYXMgcmVhZC13cml0ZT8gSSBzZWUg
YSBwb3RlbnRpYWwgYnVnIHRoZXJlLgo+IAo+Pgo+PiAgICAgVGVzdGVkIHdpdGggc3l6Ym90Lgo+
PiAgICAgUmVwb3J0ZWQtYnk6IHN5emJvdCtmMWZhYTIwZWVjNTVlMGM4NjQ0Y0BzeXprYWxsZXIu
YXBwc3BvdG1haWwuY29tCj4+ICAgICA8bWFpbHRvOnN5emJvdCtmMWZhYTIwZWVjNTVlMGM4NjQ0
Y0BzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tPgo+PiAgICAgTGluazoKPj4gICAgIGh0dHBzOi8v
c3l6a2FsbGVyLmFwcHNwb3QuY29tL2J1Zz9pZD1iZTdlNTJjNTBjNTE4MmNjMDlhMDllYTZmYzQ1
NjQ0NmIyMDM5ZGUzIDxodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/aWQ9YmU3ZTUy
YzUwYzUxODJjYzA5YTA5ZWE2ZmM0NTY0NDZiMjAzOWRlMz4KPj4KPj4gICAgIFNpZ25lZC1vZmYt
Ynk6IEltbWFkIE1pciA8bWlyaW1tYWQxN0BnbWFpbC5jb20+Cj4+ICAgICA8bWFpbHRvOm1pcmlt
bWFkMTdAZ21haWwuY29tPgo+PiAgICAgLS0tCj4+ICAgICDCoGZzL2pmcy9uYW1laS5jIHwgMiAr
Kwo+PiAgICAgwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4+Cj4+ICAgICBkaWZm
IC0tZ2l0IGEvZnMvamZzL25hbWVpLmMgYi9mcy9qZnMvbmFtZWkuYwo+PiAgICAgaW5kZXggYjI5
ZDY4YjVlLi5jZDQzYjY4ZTIgMTAwNjQ0Cj4+ICAgICAtLS0gYS9mcy9qZnMvbmFtZWkuYwo+PiAg
ICAgKysrIGIvZnMvamZzL25hbWVpLmMKPj4gICAgIEBAIC03OTksNiArNzk5LDggQEAgc3RhdGlj
IGludCBqZnNfbGluayhzdHJ1Y3QgZGVudHJ5ICpvbGRfZGVudHJ5LAo+PiAgICAgwqDCoMKgwqDC
oMKgwqDCoCBpZiAocmMpCj4+ICAgICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBn
b3RvIG91dDsKPj4KPj4gICAgICvCoMKgwqDCoMKgwqAgaWYgKCEoSkZTX1NCSShpcC0+aV9zYikt
PmxvZykpCj4+ICAgICArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIG91dDsKPiAK
PiAgICAgU2hvdWxkIGJlIHNldHRpbmcgcmMgdG8gYW4gZXJyb3IgaGVyZS4gSSBzdWdnZXN0IC1F
Uk9GUywgYnV0Cj4gICAgIGFueXRoaW5nIGlzIGJldHRlciB0aGFuIHJldHVybmluZyB6ZXJvLiBD
YWxsaW5nIGpmc19lcnJvcigpIG1pZ2h0Cj4gICAgIGFsc28gYmUgaW4gb3JkZXIsIGFzIHRoYXQg
d291bGQgZXhwbGljaXRseSBtYXJrIHRoZSBmaWxlIHN5c3RlbSB0bwo+ICAgICByZWFkLW9ubHku
IChUaGUgZGVmYXVsdCBiZWhhdmlvciBhdCBsZWFzdC4pCj4gCj4+ICAgICDCoMKgwqDCoMKgwqDC
oMKgIHRpZCA9IHR4QmVnaW4oaXAtPmlfc2IsIDApOwo+ICAgICBJdCdkIGJlIG5pY2UgaWYgd2Ug
Y291bGQgbW92ZSB0aGUgY2hlY2sgdG8gdHhCZWdpbigpLCBidXQgaXQgaXMKPiAgICAgYXNzdW1l
ZCB0byBhbHdheXMgc3VjY2VlZCwgc28gdGhlcmUncyBubyBnb29kIGVycm9yIHJlY292ZXJ5IHRo
ZXJlCj4gICAgIHdpdGhvdXQgY2hhbmdpbmcgYWxsIG9mIHRoZSBjYWxsZXJzLiBNYXliZSB3ZSBj
YW4gY2FsbCBqZnNfZXJyb3IoKQo+ICAgICB0aGVyZSBpbiBjYXNlIHdlIGdldCB0aGVyZSBmcm9t
IGFub3RoZXIgc3lzY2FsbC4KPj4KPj4gICAgIG11dGV4X2xvY2tfbmVzdGVkKCZKRlNfSVAoZGly
KS0+Y29tbWl0X211dGV4LCBDT01NSVRfTVVURVhfUEFSRU5UKTsKPj4gICAgIC0tCj4+ICAgICAy
LjQwLjAKPj4KPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2pmcy1kaXNjdXNzaW9uCg==
