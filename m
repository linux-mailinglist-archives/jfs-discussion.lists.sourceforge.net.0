Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC4E7DE2E7
	for <lists+jfs-discussion@lfdr.de>; Wed,  1 Nov 2023 16:21:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qyD27-0006Aw-OL;
	Wed, 01 Nov 2023 15:21:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave.kleikamp@oracle.com>) id 1qyD25-0006Aj-Q3
 for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Nov 2023 15:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t4R5Bgh+Kt5QLcXsLlpg+boeBC4livXiSTq07+CtpbA=; b=H8hb6OOJTb9Qe970qbXC5iOcgY
 pWNUq62sa4LMCq+kuxmAuA99EGyfX8i+9XSvq7GXp5lvVAq5gusM0OSL74qZtSbD5YSzhgWy2H8pQ
 KkPzS+QlkFg1qjbOemXhD7dL923grLmHsyDYnn3lyHwVMA9+fkDrKUQLInsFkI6ZfH2Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t4R5Bgh+Kt5QLcXsLlpg+boeBC4livXiSTq07+CtpbA=; b=Dqe5082m2+Xr2ZWRYosr+sauiD
 s8aKVhMfg5wBXmCwgxcmC+dQGiaIJyi0LRmPzs9c1Bf29ZonnuAlkKECbR19Pxvlew01Sk55kq8OY
 ElApXwAuvT89VP0V3Zfr9tghIHr6B2zm8fyo+IhoxrP4hDJGX1R9V55dynAW605XjSm0=;
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyD1v-00088Q-AP for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Nov 2023 15:21:16 +0000
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 3A1BEoCA031295; Wed, 1 Nov 2023 15:20:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : date :
 subject : to : cc : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=corp-2023-03-30;
 bh=t4R5Bgh+Kt5QLcXsLlpg+boeBC4livXiSTq07+CtpbA=;
 b=ZLYwz/NlRaZcPW3rGuLOX+61F8N9v4Ajr3D+YOWx272PZZgbWX7HiJFHaI06aCQKmbz0
 rVeXnROh4boPPcVViR15XwyoQK5bsh0GpMPxJ3ROYkpeMS1tk/FfF9GtacTTTTqqrMLQ
 bkFEPg4tF/gJNyEPbLPfCwRfI0pQE0Sw7Jp4AYAkK/Bg4fVt/dCki+gmiqXcV9xbGp4A
 7oYyTy3piqTuVcizrxRfmF4zY0ea7w8ZUI8dCB82waV5pKhfr605+21lOJi+JtwX/Uxb
 R9J02c8H8et8ws5/cu3ThvgctWsgNm52nSz/v7Nsmtm1CZSSNKUqa2zFwDjrBxMOQCvk IQ== 
Received: from iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com
 (iadpaimrmta03.appoci.oracle.com [130.35.103.27])
 by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3u0tuufjmb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Nov 2023 15:20:46 +0000
Received: from pps.filterd
 (iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.19/8.17.1.19)
 with ESMTP id 3A1E9ErT020115; Wed, 1 Nov 2023 15:20:44 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
 by iadpaimrmta03.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id
 3u0rrddqfn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Nov 2023 15:20:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KeXv2BtR5BX9VoJ8IlRjQE5reS0l4HPo1ZFWmMSOUtdxwPDWddWn/9rN3m/AVKlNRN5EkShBFJnKLFbuHXtBV31qqVu+9FZvT8d14q9b1X1aqel0dH5R1fuaSRK7z+7OdB+61MyTaJmBrnp1/yYSRovtFiRWqRLy0eqh6V2AxMNEGc0yQrdLM4YDN0Jp8ktcIx5mdMHRVBoerZyTYDNE/R2oVgky5gEuFgRXfj/A3ECz7B8pH4BkxU2UFYMyP2DgNf3Y+lyYsKquOOJeHPKzq4lVmE8H0v6zxGJEx3HSWLZ0VBpstFT14vFUHS/XF4z7fDxqKz3KOAav2U7353E7fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t4R5Bgh+Kt5QLcXsLlpg+boeBC4livXiSTq07+CtpbA=;
 b=e1zjWROKeokv91ZoOnrRRpiQF9DlNKcjYUFI8yyvJVSOpe1TWF21kTo7vswJFQa7IhsFUtFSweHUAcAyjR9R2ArZg6+B1xAWYeHXgOoByRXlfPqxnSXLnmDbCVddcMWyl9YhNI6A3MPSaUZtlPu6GCWS3webkFwv78uqjJm84+zRkFvWWpVOGz7BmiW1jywOmgTG07ij9bD2ZXze16hH5ULzGR0BL/Pd2Kgi/nFii3/9QV3TAi2xfa80Cgqeujkslk9nN3POuf5ldfUeJfKu6gSrSSUNd5Bm5lWJ+f3xSSunRh8clPCK26Ek3fFQ9qARO4hLfzWI8nZFNWLlqD7AIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t4R5Bgh+Kt5QLcXsLlpg+boeBC4livXiSTq07+CtpbA=;
 b=y6GC5jNDtgwMSHez53N+WHtrDlZGVNDy15XeVKVfVUL86tRaXgunSnPoFHa04Y3DK2Wt7BOesPy3M5twuADlyQXegqUhMkdStOz89W6wrOjXfYLCHNSMCiTGXgLKOwsqY/WCKtQeswue+7QZNjcbU9hxyB0tV16x9WRl/4nu6A4=
Received: from MW5PR10MB5738.namprd10.prod.outlook.com (2603:10b6:303:19b::14)
 by CH3PR10MB7305.namprd10.prod.outlook.com (2603:10b6:610:12e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.24; Wed, 1 Nov
 2023 15:20:42 +0000
Received: from MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::a946:abb:59d6:e435]) by MW5PR10MB5738.namprd10.prod.outlook.com
 ([fe80::a946:abb:59d6:e435%4]) with mapi id 15.20.6933.022; Wed, 1 Nov 2023
 15:20:42 +0000
Message-ID: <e1ec475e-1c98-4437-8152-66487e1ef29b@oracle.com>
Date: Wed, 1 Nov 2023 10:20:40 -0500
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Manas Ghandat <ghandatmanas@gmail.com>, dan.carpenter@linaro.org,
 shaggy@kernel.org
References: <20231025060907.115675-1-ghandatmanas@gmail.com>
In-Reply-To: <20231025060907.115675-1-ghandatmanas@gmail.com>
X-ClientProxiedBy: CH0P221CA0014.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:610:11c::12) To MW5PR10MB5738.namprd10.prod.outlook.com
 (2603:10b6:303:19b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW5PR10MB5738:EE_|CH3PR10MB7305:EE_
X-MS-Office365-Filtering-Correlation-Id: 34e20113-9f52-471c-7a0e-08dbdaee1cf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qDw+opZO1rtl/GzjfnH8MvrwgL9FUNnOVrO9Bnu+nysOzx7Y3CuBgljyihqZaohTXoZ+ioXFbZxej/Ojp1LMC9GEQpGz+NvY5P94o3eG0nhxyxdRvDUSj0q+hBbnpbueJT1cmDUIQ+Mue2TpwNXqaIA5JIqZSKaana+cQZN3sNN89xiyrZahqZsFN8JlPFCeoGB2Y8bVWG9/RfOB41lQx6P5g7Seg6LznjKfN7erb5gSEZm8TWR5RUCWouzlUKzBZcs9z3kNf2VKf4zJXQA13h83WY/SRvOVdg0AUpM9DWpdGGJowhVXqVOZudDGI7ThSCB2BI+5Oh9TzcMyOuvyAOUB6Xn+JSUvEIfLGbBmRqx7rFAxN/8e3KyFk7TuPcf4a4DUdIl3OV+BYGjmLWItX+PKE2V2littH3As6+EVNyy2XZZv+6b+rjOlUXmvAj5KTZ3RVI3m6HQMxf7UyV/2xfN6pNak6+8GiIlzF4JYs/0ZMYN4nN99UeT/XawAca9AeaCNMElWGMowzDjRAgG/c2kMq8jS7RmSlujmPV3gNznJsFIqEIT3mXWhN02IBDnf1viya9bgDtFa56JgHVaBslsqoYKnPOxIXicDqJV09ZFNVvBDhX+KrxXit8f9pYpO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR10MB5738.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(346002)(376002)(136003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(31686004)(6512007)(31696002)(478600001)(6486002)(966005)(6506007)(83380400001)(86362001)(38100700002)(36756003)(66946007)(316002)(5660300002)(66476007)(26005)(66556008)(2906002)(41300700001)(2616005)(44832011)(8676002)(4326008)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVpCZUpaWkRtUTJwMUhRVXhTdUx5UGJmWW8wbklQajhzZzZvUEhqb21rWTFH?=
 =?utf-8?B?ZkcrbUlyNWVOaW5FV1c4VWZycnllMkZ0R2RCUVlVS1FWdTZneHNNWGpPUEZR?=
 =?utf-8?B?bnluZDIyM1ZNSFZBNVEvSkl2Wmp3L2c1Yll5RjE0cUNoL2JJc2lIOUhiSHBR?=
 =?utf-8?B?eEZvcDNxSE5KV0t3aTY0SzFaOUJHQU5rbmRJZmUxS0cyZGZ3UklhN0xXVDdq?=
 =?utf-8?B?SEtpaGFvK3NSWEUyR1lBY0pHZDlTWE41SExETzZuRFBmcTJXVU13ZC8wTGo2?=
 =?utf-8?B?clBKZjlhMC9GSGN4akNUVWF1SXVvY0pXRWlCOVo1VUFFVTJ5MU01Um5lZmxG?=
 =?utf-8?B?dGpZOWxFRXhQLzMwVTdtaWlIT1ExMHBKVmJhOXcyVWc4aVJWM0txTWpKN3NP?=
 =?utf-8?B?NEVQVitTWEMySW1hL2d5dDZ3dVUzb3k4V3lVSVFhYS94QVhnbmJNLzE2U1NZ?=
 =?utf-8?B?V2FhOG1pK0pKdWVXT3NYa1E5Tnkzd1BaY1BsVCt6TzA0L0pHRkFTNjYxS05W?=
 =?utf-8?B?b3UyeEdoS3hYVmhTNmsyYUkzaGs2V0xvMjlDVHJpeXdzY2JBbVV0OVVEVGZx?=
 =?utf-8?B?dWlKN3NGYTFmVzZvb2M0NjlSdGlEVEJCeWgvR1hGbG96L25WVndId2M3ODlC?=
 =?utf-8?B?amE5V20vRWF2WVVnRlpYcHlJeWovNkRLM1lCckk5L1ZUdkE0cll5WjUyT2xu?=
 =?utf-8?B?RXRjT01SVlh2eUx3VU9YM09CdVU2UW52aG1iWUhoYktMdFRkOUpHNndpZXN2?=
 =?utf-8?B?ZmxTMC9ibUFqQnp2TjV5MVdqUmdjU3ZmOTR1MWxtMVlvVk1oZVlJc0FSa0dk?=
 =?utf-8?B?RU1hR1pQOGhNaXhuYVcxelFsdFdmcExwVnRLMzU3SVA3SUhsMElsZjVUUlVw?=
 =?utf-8?B?L1Z1MHdBQlkxRTF5VitZNVBJMjNmOGpYQ0p4QkdRdWlhVTJQdEVDN3pBWXpt?=
 =?utf-8?B?b0FVK3lSZjNrNEI2NEVSMGdkNWZtVnJSWUFubXlFZ2tERks1bXplbytDcTdx?=
 =?utf-8?B?bnU0b1A1a1ZDeWx2M0xOK3R5YU53Vk9SOWc0R0UzZGxqVWR0TzdMSTVxQjk0?=
 =?utf-8?B?ajAvTWRNMTZiZ21zNHRiQ1pIOExHMStiU0daZnpVc242ZWxZNXJSRzR6TUNR?=
 =?utf-8?B?VjdUa2FpWmpiTmsyQmdXN0V0QSt1QmhCYWxIakZoZWpnRGhFYUtNZEJOci9F?=
 =?utf-8?B?bkh3L05idHQ1TGpFMnR2cG5heTZlZ1pxYTBabVJaVmpINTlhT0FFZnJXOXo5?=
 =?utf-8?B?VXpBSW5oNGY0bjFwNUlOS2FjWVNYa2J4VXNyditVZ01mUzAzK2RBT09yOENr?=
 =?utf-8?B?VitsTDJGR1RVYlYzWnhOdjVoNnpuSXVZSE1jb3htSE9MUjUwRGFCbDJCbUxB?=
 =?utf-8?B?aWNaUTkzYkJKTVFFbk9vNXFKaklaUzJOT2d1NHNaZTcvUnVONVZkcnlvdTZ4?=
 =?utf-8?B?VjlzcGV5UnUzek8xVU94MG1EdDNRV0NwdFdHT2FpMW1JM2h5U2ZyaUdKVVlt?=
 =?utf-8?B?MHBhWkYvTHl5amxHNzBaRkQwTzRxU050eHNyanhodzZRNlptWnpiMENKWDhC?=
 =?utf-8?B?dW9tZy9LbFRyNWc5ZnlKbmV1ZHNYL3lJVklaN0xCYWNRd1BrQTFwQTR1WFVv?=
 =?utf-8?B?bUgvdlNUQWc3bEZhVmkyQldiTURoZldyNXF2ZXowb2UvVU0wbW5uNmpSMnhi?=
 =?utf-8?B?L2RJQTNtL0J5Yk9kWXJ2TEQreGVzb3FwMjlKeEtsdG1nYVhBM2U1WnU3Tit2?=
 =?utf-8?B?aW1yOGxLYjNlai9rT1N2MDBqM2l1djdlZ2ptdndNaXhIY3pma2l1eHZReFcv?=
 =?utf-8?B?V0VRRVJzZ0paU0pHamhvUUFuTkZ2dGlCcXl4RjJ1RDg4d0ZTMkhmNkwyb2FB?=
 =?utf-8?B?S2RzaXgvQVdYS0hETEpNUm1NclpUUGpFeFlJYnpSVTdURTZmNWk2UGJVOVEv?=
 =?utf-8?B?NktyZXNjYjJ3WEVFb2xydnZnemIwZzU3NEk0dDhjRGxrWUNmVktDZzRqb0Zz?=
 =?utf-8?B?YThTRlVXZXFvM1JtR3ZhZTgzY0FCcVlWYU5wb1VnZHQrQU1FSlJ2UWRaZzFJ?=
 =?utf-8?B?akVJWXNnNkhZQS9CM0J2TFkvT3pKTWRUMSs1YzBxZ0pqWWRDUlR3djBuN3pR?=
 =?utf-8?B?eCttT0kzcWZwaWFlamU3SGVIQVJqMFEvMHVZMEZVWlA2SzJrR0tKcnpoQTFm?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?utf-8?B?QjZpWGIzeHprNXlhekpsWW1KYk9TRzFreWM2elB2b0NZeVIvSjFNdWRWSDVw?=
 =?utf-8?B?TkYyVUJtS2RHY3VjVnNvNlFiWThPZWN6V2QrKytCNjNxWUt3NUcrUEVjS1U5?=
 =?utf-8?B?S1Q1VGpLN013S1NsQWRrVUFCNlh2cVhmNUJtbjZFTlBFamtQQkh3MnJ3QjNT?=
 =?utf-8?B?SUNzWDVSTGtWaE03ZENmcTdWa09qbFA1VVZCVVd3bE9xNlZOSUxtbnVFanN1?=
 =?utf-8?B?VGg4Nm9VbUtTWWhES0Y0TXE5Wm44TWs3aTU2OSt6WWFEOGNEMExJY2Vnb201?=
 =?utf-8?B?M0JqanpCNnZ4RVFuOUNIVzN6VCthMFExTU5iVDN3S29jenNlVjRtQVFnTEtD?=
 =?utf-8?B?YkxNWkVKMnFsQnFlN0N4bC9KM2p5MDQxSXpqZWhDTVpiWlByeVM1VjBqendK?=
 =?utf-8?B?SXBKQXo5QTJjYjR5eUU5K3dITzV1T0Ftd0RFdjg0Ti9IN0xyVTBueFhVSTBw?=
 =?utf-8?B?Y0dxRDBER3pXbnNVUFJzaVZMSUJ6MGo3N2k0SzBkakdCQXpNekR6K0NCTUp3?=
 =?utf-8?B?RngyY2JQbVVodmJpL2g5YURMYkwrbDY4OWlFQkdiUmc2YktQT1F1UjU0SUl4?=
 =?utf-8?B?eEYvQmtIQVduaVRVblVsSENKUDJHc21aeXJsTk9KMUZFNFcvakpZbU9WdHFM?=
 =?utf-8?B?Y3A1dmtHVURiSE5zaUZ4MzRiVG1uZFpEUlFXZ1FldHBvVlZ3S2oyUDkxTDBN?=
 =?utf-8?B?NzFvVXNpTU0wSVptOWZURGJlQXcyc1J6UElDL1BHYkNUZ2FOcWY5UklRZGZk?=
 =?utf-8?B?RHBYMWNDVFk0bzRHc1NZdmNqRDVPV1hBb3FtWHRPc1hMVlhWMlR5OUpqSUtV?=
 =?utf-8?B?RElwVndyMVFJcFkrUlFlMXJqbmVjVnRGWGRYMEJSbkN0SXlibVRZMllzUmxO?=
 =?utf-8?B?VWN6K2RLdFdnaWxhSmxZZ2FqSy9pREFFT2cyL2V0RDY4TWlkcE9hVzNBdUZX?=
 =?utf-8?B?ZzhzWmpxbHNoK0NYWDZxSDJ4Znl4a3VxOFRlaXRQN2V2R0ozOGtZUVVmaXk3?=
 =?utf-8?B?bVJDSXY5NDdDZm12dm9EbTRWS2I4eG5ZZ1RmQWRicUhBN0xDaDF0dlBPNzNl?=
 =?utf-8?B?dDBTMDVNcHZqdkxSNzFuem1ZZEJxVHhLK0FmN1M1VllnY0hlM2doOGRPbkZD?=
 =?utf-8?B?RCtqUndEakFBblVZNlZyTFAvM2J3d0NEaENyQlFHQ3hqUlpqa1ZSall4aExC?=
 =?utf-8?B?SHgwdXFzdlRSYkc0SDdNRUMzVVpPbmtPL1REekM5ZFBVaDU5TDdRc0xkT2Jx?=
 =?utf-8?B?Nm1jTWdCN0FNcmcvTEZjVlJDcXgzckVSd2xpY3NDSG4zbzVBOTk1Mk8yTHZ5?=
 =?utf-8?B?S3FmMjE4S05EOVhhUkRUK2RPOEpEVm1nWFBiNFZ3Ukh5UWxBb2xpR0JpVjhi?=
 =?utf-8?Q?vLsAwQtjuq/+EGgZNlJfm0+FVZq42QRE=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34e20113-9f52-471c-7a0e-08dbdaee1cf3
X-MS-Exchange-CrossTenant-AuthSource: MW5PR10MB5738.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2023 15:20:42.8281 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YE+KPwX2/FOgM2HTqhHW9osb5+2tnEg+bTQ8DmxbHtAFBjmKeW6IiC2JgAXNKB5Qj1WpAgJg1jneVc/KBK8mmMsSZo9/sI0j7fY/HgiI0K0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR10MB7305
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-01_13,2023-11-01_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 adultscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310240000
 definitions=main-2311010126
X-Proofpoint-GUID: zBlwSLKCiaiSiHFvAFMdvNS2m2cgyEmR
X-Proofpoint-ORIG-GUID: zBlwSLKCiaiSiHFvAFMdvNS2m2cgyEmR
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/25/23 1:09AM, Manas Ghandat wrote: > Currently while
 searching for current page in the sorted entry table > of the page there
 is a out of bound access. Added a bound check to fix > the error. Looks good.
 I made the small change of setting rc = -EIO in that case, so we know there
 is something wrong with the file system. 
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
X-Headers-End: 1qyD1v-00088Q-AP
Subject: Re: [Jfs-discussion] [PATCH-v2] jfs: fix slab-out-of-bounds Read in
 dtSearch
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
Cc: jfs-discussion@lists.sourceforge.net, oe-kbuild@lists.linux.dev,
 linux-kernel@vger.kernel.org, oe-kbuild-all@lists.linux.dev,
 Linux-kernel-mentees@lists.linuxfoundation.org, lkp@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 10/25/23 1:09AM, Manas Ghandat wrote:
> Currently while searching for current page in the sorted entry table
> of the page there is a out of bound access. Added a bound check to fix
> the error.

Looks good. I made the small change of setting rc = -EIO in that case, 
so we know there is something wrong with the file system.

Thanks,
Shaggy

> 
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/r/202310241724.Ed02yUz9-lkp@intel.com/
> Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
> ---
> V1 -> V2 : Removed redundant check on stbl
> 
>   fs/jfs/jfs_dtree.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
> index 92b7c533407c..cf67d32d5b7f 100644
> --- a/fs/jfs/jfs_dtree.c
> +++ b/fs/jfs/jfs_dtree.c
> @@ -633,6 +633,9 @@ int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
>   		for (base = 0, lim = p->header.nextindex; lim; lim >>= 1) {
>   			index = base + (lim >> 1);
>   
> +			if (stbl[index] < 0)
> +				goto out;
> +
>   			if (p->header.flag & BT_LEAF) {
>   				/* uppercase leaf name to compare */
>   				cmp =


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
