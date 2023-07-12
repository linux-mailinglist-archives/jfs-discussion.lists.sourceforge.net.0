Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A1C75016C
	for <lists+jfs-discussion@lfdr.de>; Wed, 12 Jul 2023 10:27:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qJVBe-0000PJ-O2;
	Wed, 12 Jul 2023 08:27:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mirimmad@outlook.com>) id 1qJVBd-0000P4-0J
 for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 08:27:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Cc:From:Subject:Date:Message-ID:Sender:Reply-To:To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t0VCnRzZleXFnn6OFJD4nN+va4AGWKVGu+c7VPKERiM=; b=kOrzas5KtfMiaTMgZYvDTEtnGn
 fSGEe0b4Xf16NwJk74550I9J3tsXFgyTGVTpdnCSWP9FCSb3WES3o7MlIU3ivwdpfNxAcl4Gv78KT
 DdEGjtYSupaztK9dFh6L/uqwd5jdVeMiM8rAf3KxfpJqkwoaNZ3ZtJsI6N9KyfrUciWU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:From:Subject:Date:Message-ID:Sender:Reply-To:To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t0VCnRzZleXFnn6OFJD4nN+va4AGWKVGu+c7VPKERiM=; b=gBEC4TW6kPaEBAN+X65Y3iiMSV
 F+fKNqPP93V+yay2bGiMabY1k0CPllKgYBzJGMY5qxdk14tB4F7c3hdrEmT3ADv3vw7lUFYR4RzX5
 lN6eS9/RJP8HidjEfmvJBRdMi1asJ4tGQ969Bq/ewH3Hbucd9WCyVgY9I9OpJAozjoh0=;
Received: from mail-mw2nam10olkn2041.outbound.protection.outlook.com
 ([40.92.42.41] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qJVBd-0007wY-0N for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Jul 2023 08:27:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eNexGyX68Y40PlwSSSYQqYWVQm5OXT8HOGlUZFaG1g0B+FmOp+Md/PJm2MF0q9kg97DNcujokpQts8/hMnQtkHWCjJPFLN2ekDfTAuK7c0ohspqc8S98t1UKaKx0EYQDi+/SwtNk5zyStYz9iS/JsMd8Q2rQFc11IC07A/PGKsQUZ8X8h4O1k/ByDkTLwuKLTBcLGL25JW8XApPl3augLHYEeK7UTQzJZhxlibZxDNb08VrS3kXzBSNFMR7JrzTSMDkMxbA4BAns2gFDE7ztkZGtUoKFc5476NA0xE4Ei7tDYUv1useM48tIknHsolhbtoeDeYQw8YejlzYkCTx6fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t0VCnRzZleXFnn6OFJD4nN+va4AGWKVGu+c7VPKERiM=;
 b=ksG1/UMjWZg4jcplEgb5c/VbwBu6geCZovnprWqWnHkfskhyea46L+STGRJi2yXYvLfQY4aL6rSCy4iTTSN/Oe4EzGUdGFkHrF6UaQntSLquu51qmqiwxAkCZmCmYCHkhVNAuwdH5D0JnPbk7DD+qxN+UZ1HEaE9g29FIY0IOMXOY8b1Glyv2z6GnplhLHTlufmpVXh0yYOzHDnjRFi2QSL3Y48ZFG8d6Lt5a2qDKGqLyi7fc3zDgcW7hBLGXd9foNVUT8y4WBHejRemqZzlQyqbKAsMHyaUwsLYo5eswlk69tDmByz0aYxBZp/H2IkwnsyfNnVkyam1qlcqak6CrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t0VCnRzZleXFnn6OFJD4nN+va4AGWKVGu+c7VPKERiM=;
 b=i+9UtFekGx5Z3IlfMwrCTv/8+MDybfobDDwvp7PDUbMIbRgrL/f/cS3k3b0bm52LO7zktzT60IZjqACgHyB5N5qqHBITuGdsi78h6u4/AxVo5sIS8ApcqjLHuKYEwqI3Uodxpgc3JXbJjOqKSaddE9GxzL7ZiA44RIXX61cCwmrzhQn/een75JnGiDapZotFXKS1sutsbCvD+85wzpZllAsj2xPxtEm3zjfF3dtCw0eyuDGHj/RxzO4mAL5QWGR2/i+z63SHi+BL2TRGlUfoWysyhlOQo+a+lnT4Q2BKRwWsaSoQM679HLL6RLqUsOiBE0U9HZ1JY9OtqYsoewqz5w==
Received: from CY5PR12MB6455.namprd12.prod.outlook.com (2603:10b6:930:35::10)
 by CH3PR12MB7500.namprd12.prod.outlook.com (2603:10b6:610:148::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.32; Wed, 12 Jul
 2023 08:26:49 +0000
Received: from CY5PR12MB6455.namprd12.prod.outlook.com
 ([fe80::d0d5:479e:b686:7c]) by CY5PR12MB6455.namprd12.prod.outlook.com
 ([fe80::d0d5:479e:b686:7c%4]) with mapi id 15.20.6588.017; Wed, 12 Jul 2023
 08:26:49 +0000
Message-ID: <CY5PR12MB6455091C997D0E219ED5D466C636A@CY5PR12MB6455.namprd12.prod.outlook.com>
Date: Wed, 12 Jul 2023 13:56:37 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
References: <CY5PR12MB64558542113D0368DD98FA62C624A@CY5PR12MB6455.namprd12.prod.outlook.com>
Content-Language: en-US
In-Reply-To: <CY5PR12MB64558542113D0368DD98FA62C624A@CY5PR12MB6455.namprd12.prod.outlook.com>
X-TMN: [K6i77ZsWM3Qp48whz5hFZhF84lzePFbkP253aF5FaSFEbnAZ80g+yBWQPI1cxWyZ]
X-ClientProxiedBy: PN3PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::6) To CY5PR12MB6455.namprd12.prod.outlook.com
 (2603:10b6:930:35::10)
X-Microsoft-Original-Message-ID: <873223c6-3a77-2b5f-ff51-f2a5b8ac5852@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR12MB6455:EE_|CH3PR12MB7500:EE_
X-MS-Office365-Filtering-Correlation-Id: c403c2c5-e9e8-4889-f973-08db82b1bc8b
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jnImrOmI2fASczElczUo+vM1ybzrwi7rvMCP+fEmZo4UofXpfIE9VUWaxzhRYx15vYLMAZjeOGsBzmW07blUws4RaH1FwmEqLxDsKom/Ed3cRQVTzl/CLnuFif7jjs1DxFu7bR6kRP3PZ+q6KsTukQnibAKy7H3HhSgffBnWB5vc3R+pKqPKQmtpsCi520Ar3tIGJyDIVnThg2gW+OKx7cwfdbiVua/mADTUWPAz3OH5RClJa6ek8aeNlrMSeCaI5MxIHAtbmEb6YkKfIqs1gkh5om4g0y0Z3EtpgrpCKtIFCdZUS5eh525XrKTwQbdqFpu5hqi1xRM5tP1WkPP9fVNChvi3veexQ+uf4radraMpdQ//FJ6Ae41LSFJTyUWr4x7oMqoBJQyUeuU9Ppl9ZSNJInkkBI8AyPcv3BoR+DKiPbIj03mCtrZ9lqKKAqJzFrVN4EUB4cpXzqk/dVWyBvHr/ZBd4P/3M9sHqM4pWSyfhiGkmh/IhuTmWiJ/5ZTDT8x9X3YVOHGacsY7LHrpBUtnuLb1UCcM75RfHgpkQezUwOl+Qr/5p2gkHRiZxtBt
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QlY1ZjErWWdWR3JWSkpUYjhlQ012QkEreVlLckRYUUlMNmJ4Vlo2Tk1LeTVK?=
 =?utf-8?B?MU1Wb1gwd1JTR3ZKTkQxL3Urd2Zmdi91OVpnZmsvbHlkRGpoQ0dNM0lJOXph?=
 =?utf-8?B?aUU5alVvam8wTHNGM1FFSUYxbkdjSWwwY0ozcGwydVlsZkIzVSt0ZHV1ek1h?=
 =?utf-8?B?S3NaYjNuSEQrVnNhYThxL3NnaS8veUFHblhMUC9TTzRGWG4ybzhlWkhxQU4y?=
 =?utf-8?B?SWxHWmY0NEFwOUdrRG8xNXV2N0lKSEU0MTN4OWhxcDJEdXhYUjI3ZFZRd2gx?=
 =?utf-8?B?dUE0M2ZDenk3NVFKUHRpaW9WanFoejNGNkNDTXM4eHhsNEhBYnBFYm1PTTd6?=
 =?utf-8?B?WE8vNzRUcTl6dENrMCtISjFlVlZ2WjVuQVhma080b200dHluTTFTa2g5UmRH?=
 =?utf-8?B?clV5alQwWHl5SDZ1aGppaHUwY3RYSkR4QmZOSHdwY2F6MW5lL3BIbTdyblBm?=
 =?utf-8?B?RnVGV1hINHBCTEFwSkN6OVRBTUpsU0Z5bzBXaURDRXVaQmpFbFJvaDBpb0Q3?=
 =?utf-8?B?aXR1aWdpK1ZVT3dJNmVPMThhZ29GWXFXUHpMem5Ud05CeHJLTVo4MFZiTjc1?=
 =?utf-8?B?eU1yQXdxU2RYMjJBcFZSMXRUWVNrZjZwdHIyUmdYSTMxYXpYanRZZXRoaFpr?=
 =?utf-8?B?Y2RGSmRjQjM1VGpoVmxuSnZTMWMxY3FNUHJCeFRYYkNYMXE1WDBVOVhYVjJQ?=
 =?utf-8?B?MmZaNnZQcktROVZHSHNvZEE5UzlrZCtYMno0Z2JkNllsS3Fsb1hLZGFNY2ho?=
 =?utf-8?B?d0lBa21NTC9KN3FlQU9pNmNRUHA2OWxyRnhhQ2NHV1ZjQ2ErUmlXTXd0QWFF?=
 =?utf-8?B?eVdoQnVoQUF4UGU0UUNKaGQzNWRjMnNheDJMUU5FRnMvbkpKT1U5TnhMYW4y?=
 =?utf-8?B?dEZENVZyR2U2V013R3lWQTk2UjR3b2dNbTlJdWUrRHpQQnhDeVpOcXZlQjBD?=
 =?utf-8?B?bGpMS3JzMHpLR1V3QVdEYnZKRkl3YTRvdEZnQmMyRnFtNGV6UnRnTU5qMENO?=
 =?utf-8?B?WXFLRG1kVUc5bWwzSFlKR3JFVHRMNVVPZTdlZHB5NDZzWjN3U2UyUGhVUi9V?=
 =?utf-8?B?NEc5OVBmemhlcU5FNnBubGovaEQ2WkJSTkFDc2lmVDJrdk9rL0xXSktFUjRS?=
 =?utf-8?B?Snd6YmlIWHNJa2lWdWd6Z3V2YlEwU3FOREo1ZURMcGlJamk4OWpOOVArK0wx?=
 =?utf-8?B?cjI1WEJTb0g1K3hWYzlDcEhSQmZEOUZLb2JoVWFONkp1ZnBxTTJsdnp2UkpV?=
 =?utf-8?B?RWZtSXBpUTdwb0JWWlZWS015MjVHYm5ORnNZZkVONnl5ZjZlSUNHYWJ0QmR2?=
 =?utf-8?B?U3NINk9rUEd3VzR5Ui9hNktRU1ZUZi8yUHdoaVJwNHV0TkIvSTBnK2o1bHFv?=
 =?utf-8?B?cEdrL2VPOE9SL0pyMFNPc3dSU1NEb2ZFeEgvQUFxMmlweUcvR3g5Ryt1MTNw?=
 =?utf-8?B?NGxkbzl2bVBWT05hTlNXZ1J4NFp5MHNIZjlYVDNNOFNJR3haV2FJU0VndHda?=
 =?utf-8?B?WjNaYW12UEVnSmtFRFkxb0lhOHdYb0ptYkFjRXBYQjhYTGwxbUFtQm9pc08z?=
 =?utf-8?B?ZFNkZG5uL1Q1NzRsZGZMa3N4Uys1YTd6NE5makpta3BHaFNPWDNjakdrcVd6?=
 =?utf-8?B?di9MY0lZNmJRSExIRHFtOFhEZ3dnKzRhcGw5bGVRakJkRzIvVGdUclJPQlBJ?=
 =?utf-8?B?WXRqQlA4VzJVWkozdG5BcjdGQ1Baa1RrV201NGFvekhCOGdpeFlTUmR3PT0=?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c403c2c5-e9e8-4889-f973-08db82b1bc8b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR12MB6455.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 08:26:49.3063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR12MB7500
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, May I please request a review on this patch. On 28/06/23
    1:14 pm, > From: Immad Mir > > There is a grammatical error in one the
   commnents > in extAlloc function. > > Signed-off-by: Immad Mir > --- > fs/jfs/jfs_extent.c
    | 2 +- > 1 file ch [...] 
 
 Content analysis details:   (0.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [mirimmad[at]outlook.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.92.42.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.92.42.41 listed in list.dnswl.org]
  1.2 MISSING_HEADERS        Missing To: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
  1.6 FORGED_MUA_MOZILLA     Forged mail pretending to be from Mozilla
X-Headers-End: 1qJVBd-0007wY-0N
Subject: Re: [Jfs-discussion] [PATCH] FS: JFS: (trivial) Fix grammatical
 error in extAlloc
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
From: Immad Mir via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Immad Mir <mirimmad@outlook.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Immad Mir <mirimmad17@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

CkhpLCBNYXkgSSBwbGVhc2UgcmVxdWVzdCBhIHJldmlldyBvbiB0aGlzIHBhdGNoLgoKCk9uIDI4
LzA2LzIzIDE6MTTigK9wbSwgbWlyaW1tYWRAb3V0bG9vay5jb20gd3JvdGU6Cj4gRnJvbTogSW1t
YWQgTWlyIDxtaXJpbW1hZDE3QGdtYWlsLmNvbT4KPgo+ICAgVGhlcmUgaXMgYSBncmFtbWF0aWNh
bCBlcnJvciBpbiBvbmUgdGhlIGNvbW1uZW50cwo+ICAgaW4gZXh0QWxsb2MgZnVuY3Rpb24uCj4K
PiBTaWduZWQtb2ZmLWJ5OiBJbW1hZCBNaXIgPG1pcmltbWFkMTdAZ21haWwuY29tPgo+IC0tLQo+
ICAgZnMvamZzL2pmc19leHRlbnQuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfZXh0ZW50
LmMgYi9mcy9qZnMvamZzX2V4dGVudC5jCj4gaW5kZXggYWU5OWE3ZTIzLi4zOTk0OTIzMDggMTAw
NjQ0Cj4gLS0tIGEvZnMvamZzL2pmc19leHRlbnQuYwo+ICsrKyBiL2ZzL2pmcy9qZnNfZXh0ZW50
LmMKPiBAQCAtMTY2LDcgKzE2Niw3IEBAIGV4dEFsbG9jKHN0cnVjdCBpbm9kZSAqaXAsIHM2NCB4
bGVuLCBzNjQgcG5vLCB4YWRfdCAqIHhwLCBib29sIGFibnIpCj4gICAJLyoKPiAgIAkgKiBDT01N
SVRfU3luY0xpc3QgZmxhZ3MgYW4gYW5vbnltb3VzIHRsb2NrIG9uIHBhZ2UgdGhhdCBpcyBvbgo+
ICAgCSAqIHN5bmMgbGlzdC4KPiAtCSAqIFdlIG5lZWQgdG8gY29tbWl0IHRoZSBpbm9kZSB0byBn
ZXQgdGhlIHBhZ2Ugd3JpdHRlbiBkaXNrLgo+ICsJICogV2UgbmVlZCB0byBjb21taXQgdGhlIGlu
b2RlIHRvIGdldCB0aGUgcGFnZSB3cml0dGVuIHRvIHRoZSBkaXNrLgo+ICAgCSAqLwo+ICAgCWlm
ICh0ZXN0X2FuZF9jbGVhcl9jZmxhZyhDT01NSVRfU3luY2xpc3QsaXApKQo+ICAgCQlqZnNfY29t
bWl0X2lub2RlKGlwLCAwKTsKPiAtLQo+IDIuNDAuMAo+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpm
cy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZv
cmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
