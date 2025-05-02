Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBBDAA6946
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 May 2025 05:21:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bEZW4jycAHDSrH8D2DdI+9JAUsKZKKQ4PC2tdeJk3hk=; b=cI3Bwc6TpdfrKxs2nH1ConWcpg
	hZh1siJjgFxLEv0bSMYStVp32TyBrJgyGkszZrBlI+j5pLJbYG+VZwelJbLHL9VKaf2krAiFQzwK4
	Jog/BwLEJNSw1AnD9sPFJ58GBJ869dqWgHAffQsdBdan6R9/pQQUUzWakec8tF/9fUWE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uAgxH-00030u-Jw;
	Fri, 02 May 2025 03:20:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <huk23@m.fudan.edu.cn>) id 1uAgxG-00030n-Qk
 for jfs-discussion@lists.sourceforge.net;
 Fri, 02 May 2025 03:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sJpnX2mmUKI59xLDnVhwtujeXxj8J7wpIOfYC94orzM=; b=QQMxVRRSvvn2ZWoCebAUrQvrrj
 kchIWtsr/3uP1g07l+p5TMxbzaBcSYS3hZLHZlsFxGQjYNyV3iZOhTkSkdiMZUgDi+qJkcMPpRcyj
 rU4x9uzpCV9bbQNl/CGrg4Z/JgAQifJhbi7guENnpIiKddI8wWLBbb4S8QWLCmO3spxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=sJpnX2mmUKI59xLDnVhwtujeXxj8J7wpIOfYC94orzM=; b=d
 gdwfqTdLbRUR3VUkitfkcJP2KXWnacGux359o34sxyH5I61QzRJlY2vzpAlEHkITbsa60ePhIbqRl
 b5vX+Qi3ZugEIlTa8YtZ0h1nn1PeF+RLxy+sqPv1CIh54emkzYbnQzUfaXaKN2HtoSjR2elAEIea/
 jbfPmlrzMfgdB/Xs=;
Received: from bg1.exmail.qq.com ([114.132.58.223])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uAgwx-0008MC-Ig for jfs-discussion@lists.sourceforge.net;
 Fri, 02 May 2025 03:20:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=m.fudan.edu.cn;
 s=sorc2401; t=1746156010;
 bh=sJpnX2mmUKI59xLDnVhwtujeXxj8J7wpIOfYC94orzM=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=Dg5dIT3pEXA7dyXGw4b8q4kUTcsMetYTqtj2r1c1IqsPgocSe3dCQGYdX3+VSjibN
 Di4VGHWJR6kfXT83xpCuFjRtcWipbPjHKGup/SqreGcN7yXeskAdCj9k9ZWxhAquFo
 MSpnr3jlE8oaeykWtrgtuvtYnW4c4bwzPnmqzj4c=
X-QQ-mid: zesmtpip2t1746155787ta3782f39
X-QQ-Originating-IP: zzqyzJLd6oJNLTbaqJiIYzxh5MZqHbTg9FZqlj3D17Y=
Received: from TYSPR06MB7158.apcprd06.prod.out ( [localhost])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Fri, 02 May 2025 11:16:25 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16861983356206743468
EX-QQ-RecipientCnt: 6
To: Dave Kleikamp <shaggy@kernel.org>
Thread-Topic: KASAN: null-ptr-deref Read in txBeginAnon
Thread-Index: AQHbuw3JlEDc8JdHvE29P6aVOc+K4Q==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Fri, 2 May 2025 03:16:24 +0000
Message-ID: <TYSPR06MB71581E78109EE6E692B74EF1F68D2@TYSPR06MB7158.apcprd06.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
msip_labels: 
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:m.fudan.edu.cn:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MhOKvsv6t0fkf9WSDl1sCNUureBbQ9xVu15OZ7ylODeTaDhDGgSOlAOd
 nImwgh1WOAswycstti30afUElmNuCeHLQvpxXPx8ZREJkFmWfi3YDne9Y2d3v+W8X7CKmq3
 T9uUj+2gpOp+8W3ujx6nbPATRsWIuH44uDWHSNEoVdplNdDHXFILO05848a2V4W/0y6vc+C
 OroWb8JUbatr4egNY2z6TRxmzYysplrWJynhX8UKKbUp+W4uTlOIFbaEbparUlf8odS+b7E
 K6lRMGhLAejD7uDEMn/EHzd4N5qEKl586DjUhFKzJYdWU+qAjjXqgdRKf3AfsxPaeJTCYFC
 BtKU695Qztn4UvV3+f+cJcgRdlOAo9RIEhep4U5RZefMLB4rWhk6w87TZuWUKLSDkZwmVfY
 +mDT273T8opmlz4MMnLTZ1bE8zDfgTT+Oye206r9XfaD8uhKqKSY49aG5cyo/y83wvAA4yX
 xvMIY6dkmTVimEh5pyDGK2a/mW1wsF94xIeT6CpkEkVCi6d+wLhLi/v2RGa7YMp2J5MI62t
 C9Eg7zDNBb2oTjZTjL01B2IzRrYzzHnMlRLMnWhq0FR5/im01txFEWUbBSZXe4hXejsGiNd
 8gijk3e+D5D/7pEdKCoqCK35C3xgp7rLP26pxnJJwq/Sbh1JuSebPzXOdxEK1cviEuMY69C
 1xdJuuJbwjpUkIEJss1orjZv9kfSq/yZhpvEKC4jnYFQW4HfizODbw47EiWBCQwLWOrIBFe
 DoY1es0sNSF1eI+FB97/RI/2xbNA9kWVK7B68dw3XoBodcy/gWXAhpi+Xz9P05NdKXIXBzK
 HND3FBux9KvR3LSiCryjcaU++M89ET6dBeVa21REqmMb3vi6SAdQROqqffn8+paTPeWuDBD
 W5AY56vlif4iLw25mJzZMU0Cezq45YvERimNUb4/MtshGromKyvUQKH47JgRgolHaT0P1fl
 iwF8AZpl7zi+8VcXipfww5rt/YfebjN7tW4AvQ0yNZUd9kplBom7x6fmKnqbnxrf90RCzV3
 gfKahaKrz1Udb7WBF0bQ8OTMLjUYCfO1sbndKGtFggmTvpf1qe
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Maintainers, When using our customized Syzkaller to fuzz
 the latest Linux kernel, the following crash (47th)was triggered. HEAD commit:
 6537cfb395f352782918d8ee7b7f10ba2cc3cbf2 git tree: upstream
 Output:https://github.com/pghk13/Kernel-Bug/blob/main/0115rc7/47-general%20protection%20fault%20in%20txBeginAnon/report0
 Kernel [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [114.132.58.223 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [114.132.58.223 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [114.132.58.223 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [114.132.58.223 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1uAgwx-0008MC-Ig
Subject: [Jfs-discussion] KASAN: null-ptr-deref Read in txBeginAnon
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
From: huk23--- via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: "huk23@m.fudan.edu.cn" <huk23@m.fudan.edu.cn>
Cc: "jjtan24@m.fudan.edu.cn" <jjtan24@m.fudan.edu.cn>,
 =?utf-8?B?55m954OB5YaJ?= <baishuoran@hrbeu.edu.cn>,
 "syzkaller@googlegroups.com" <syzkaller@googlegroups.com>,
 jfs-discussion <jfs-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

RGVhciBNYWludGFpbmVycywKCgpXaGVuIHVzaW5nIG91ciBjdXN0b21pemVkIFN5emthbGxlciB0
byBmdXp6IHRoZSBsYXRlc3QgTGludXgga2VybmVsLCB0aGUgZm9sbG93aW5nIGNyYXNoICg0N3Ro
KXdhcyB0cmlnZ2VyZWQuCgoKCgpIRUFEIGNvbW1pdDogNjUzN2NmYjM5NWYzNTI3ODI5MThkOGVl
N2I3ZjEwYmEyY2MzY2JmMgpnaXQgdHJlZTogdXBzdHJlYW0KT3V0cHV0Omh0dHBzOi8vZ2l0aHVi
LmNvbS9wZ2hrMTMvS2VybmVsLUJ1Zy9ibG9iL21haW4vMDExNXJjNy80Ny1nZW5lcmFsJTIwcHJv
dGVjdGlvbiUyMGZhdWx0JTIwaW4lMjB0eEJlZ2luQW5vbi9yZXBvcnQwCktlcm5lbCBjb25maWc6
aHR0cHM6Ly9naXRodWIuY29tL3BnaGsxMy9LZXJuZWwtQnVnL2Jsb2IvbWFpbi8wMTE1cmM3L2Nv
bmZpZy50eHQKQyByZXByb2R1Y2VyOmh0dHBzOi8vZ2l0aHViLmNvbS9wZ2hrMTMvS2VybmVsLUJ1
Zy9ibG9iL21haW4vMDExNXJjNy80Ny1nZW5lcmFsJTIwcHJvdGVjdGlvbiUyMGZhdWx0JTIwaW4l
MjB0eEJlZ2luQW5vbi8ycmVwcm8uYwpTeXpsYW5nIHJlcHJvZHVjZXI6aHR0cHM6Ly9naXRodWIu
Y29tL3BnaGsxMy9LZXJuZWwtQnVnL2Jsb2IvbWFpbi8wMTE1cmM3LzQ3LWdlbmVyYWwlMjBwcm90
ZWN0aW9uJTIwZmF1bHQlMjBpbiUyMHR4QmVnaW5Bbm9uLzJfcmVwcm8udHh0CgoKCgpUaGlzIGlz
IGEgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGVycm9yIGluIHRoZSBKRlMgZmlsZSBzeXN0ZW0u
IFRoZSBwcm9ibGVtIGlzIHdpdGggdGhlIHR4QmVnaW5Bbm9uIGZ1bmN0aW9uIG9uIGxpbmUgamZz
X3R4bm1nci5jNDY1LiBXaGVuIHRoZSBjb2RlIHRyaWVzIHRvIGV4ZWN1dGUgdGhlIHRlc3RfYml0
IChsb2dfU1lOQ0JBUlJJRVIsICZsb2ctPmZsYWcpIG9uIGxpbmUgNDY1LCBpdCB0cmllcyB0byBh
Y2Nlc3MgbG9nLT5mbGFnLCBidXQgc2luY2UgbG9nIGlzIE5VTEwsIHRoaXMgcmVzdWx0cyBpbiBh
IE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZS4KV2UgaGF2ZSByZXByb2R1Y2VkIHRoaXMgaXNzdWUg
c2V2ZXJhbCB0aW1lcyBvbiA2LjEzLXJjNyBhZ2Fpbi4KCgoKCgoKCgpJZiB5b3UgZml4IHRoaXMg
aXNzdWUsIHBsZWFzZSBhZGQgdGhlIGZvbGxvd2luZyB0YWcgdG8gdGhlIGNvbW1pdDoKUmVwb3J0
ZWQtYnk6IEt1biBIdSA8aHVrMjNAbS5mdWRhbi5lZHUuY24+LCBKaWFqaSBRaW4gPGpqdGFuMjRA
bS5mdWRhbi5lZHUuY24+LCBTaHVvcmFuIEJhaSA8YmFpc2h1b3JhbkBocmJldS5lZHUuY24+CgoK
Cgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KT29wczogZ2VuZXJhbCBwcm90ZWN0aW9uIGZhdWx0LCBwcm9iYWJseSBmb3Ig
bm9uLWNhbm9uaWNhbCBhZGRyZXNzIDB4ZGZmZmZjMDAwMDAwMDAwODogMDAwMCBbIzFdIFBSRUVN
UFQgU01QIEtBU0FOIE5PUFRJCktBU0FOOiBudWxsLXB0ci1kZXJlZiBpbiByYW5nZSBbMHgwMDAw
MDAwMDAwMDAwMDQwLTB4MDAwMDAwMDAwMDAwMDA0N10KQ1BVOiAwIFVJRDogMCBQSUQ6IDI4NDAg
Q29tbTogc3l6LjcuMjU3IFRhaW50ZWQ6IEcgwqAgwqBCIMKgIMKgIMKgIMKgIMKgIMKgIMKgNi4x
My4wLXJjNyAjMQpUYWludGVkOiBbQl09QkFEX1BBR0UKSGFyZHdhcmUgbmFtZTogUUVNVSBTdGFu
ZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1MgMS4xMy4wLTF1YnVudHUxLjEgMDQv
MDEvMjAxNApSSVA6IDAwMTA6Y29uc3RhbnRfdGVzdF9iaXQgYXJjaC94ODYvaW5jbHVkZS9hc20v
Yml0b3BzLmg6MjA2IFtpbmxpbmVdClJJUDogMDAxMDphcmNoX3Rlc3RfYml0IGFyY2gveDg2L2lu
Y2x1ZGUvYXNtL2JpdG9wcy5oOjIzOCBbaW5saW5lXQpSSVA6IDAwMTA6X3Rlc3RfYml0IGluY2x1
ZGUvYXNtLWdlbmVyaWMvYml0b3BzL2luc3RydW1lbnRlZC1ub24tYXRvbWljLmg6MTQyIFtpbmxp
bmVdClJJUDogMDAxMDp0eEJlZ2luQW5vbisweDExOS8weDQwMCBmcy9qZnMvamZzX3R4bm1nci5j
OjQ2NQpDb2RlOiAyNCAyNCA0OCA4OSA0NCAyNCAwOCBlOCBhNSAzMCBjNCBmZSBiZSAwOCAwMCAw
MCAwMCA0OCA4OSBkZiBlOCA2OCA3MyAwMCBmZiA0OCA4OSBkYSA0OCBiOCAwMCAwMCAwMCAwMCAw
MCBmYyBmZiBkZiA0OCBjMSBlYSAwMyA8ODA+IDNjIDAyIDAwIDBmIDg1IDc3IDAyIDAwIDAwIDQ4
IDhiIDQ1IDQwIDMxIGZmIDQ4IGMxIGU4IDAyIDQxIDg5ClJTUDogMDAxODpmZmEwMDAwMDEzZDZm
NTA4IEVGTEFHUzogMDAwMTAyMTIKUkFYOiBkZmZmZmMwMDAwMDAwMDAwIFJCWDogMDAwMDAwMDAw
MDAwMDA0MCBSQ1g6IGZmZmZmZmZmOWVlNTZiNjgKUkRYOiAwMDAwMDAwMDAwMDAwMDA4IFJTSTog
MDAwMDAwMDAwMDAwMDAwOCBSREk6IDAwMDAwMDAwMDAwMDAwNDAKUkJQOiAwMDAwMDAwMDAwMDAw
MDAwIFIwODogZmZmM2ZjMDAwMjdhZGUwMSBSMDk6IGZmZjNmYzAwMDI3YWRlOTQKUjEwOiBmZmYz
ZmMwMDAyN2FkZTkzIFIxMTogMDAwMDAwMDAwMDAwMDAwMyBSMTI6IGZmMTEwMDAwMTFiNDQ2ODAK
UjEzOiBmZjExMDAwMDI1MTk0MDAwIFIxNDogZmYxMTAwMDAyOTBkMjgwMCBSMTU6IDFmZjQwMDAw
MDI3YWRlYTYKRlM6IMKgMDAwMDdmMDFiMmEwODcwMCgwMDAwKSBHUzpmZjExMDAwMDZhMjAwMDAw
KDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAKQ1M6IMKgMDAxMCBEUzogMDAwMCBFUzogMDAw
MCBDUjA6IDAwMDAwMDAwODAwNTAwMzMKQ1IyOiAwMDAwN2ZjNjc0OTgyNmY0IENSMzogMDAwMDAw
MDAyM2E4YTAwNCBDUjQ6IDAwMDAwMDAwMDA3NzFlZjAKUEtSVTogODAwMDAwMDAKQ2FsbCBUcmFj
ZToKwqA8VEFTSz4KwqBleHRBbGxvYysweGQ3LzB4ZjIwIGZzL2pmcy9qZnNfZXh0ZW50LmM6NzgK
wqBqZnNfZ2V0X2Jsb2NrKzB4NjZhLzB4YWIwIGZzL2pmcy9pbm9kZS5jOjI0OArCoF9fYmxvY2tf
d3JpdGVfYmVnaW5faW50KzB4NGIyLzB4MThjMCBmcy9idWZmZXIuYzoyMTE2CsKgYmxvY2tfd3Jp
dGVfYmVnaW4rMHhhMy8weDFlMCBmcy9idWZmZXIuYzoyMjI2CsKgamZzX3dyaXRlX2JlZ2luKzB4
MzUvMHhhMCBmcy9qZnMvaW5vZGUuYzoyOTkKwqBnZW5lcmljX3BlcmZvcm1fd3JpdGUrMHgyOTAv
MHg4NTAgbW0vZmlsZW1hcC5jOjQwNDYKwqBfX2dlbmVyaWNfZmlsZV93cml0ZV9pdGVyKzB4MTYw
LzB4MWEwIG1tL2ZpbGVtYXAuYzo0MTQ3CsKgZ2VuZXJpY19maWxlX3dyaXRlX2l0ZXIrMHhlMS8w
eDM0MCBtbS9maWxlbWFwLmM6NDE3MwrCoGRvX2l0ZXJfcmVhZHZfd3JpdGV2KzB4NTFmLzB4N2Uw
IGZzL3JlYWRfd3JpdGUuYzo4MjAKwqB2ZnNfd3JpdGV2KzB4MzBlLzB4ZDcwIGZzL3JlYWRfd3Jp
dGUuYzoxMDUwCsKgZG9fcHdyaXRldisweDFiMS8weDI3MCBmcy9yZWFkX3dyaXRlLmM6MTE0NgrC
oF9fZG9fc3lzX3B3cml0ZXYyIGZzL3JlYWRfd3JpdGUuYzoxMjA0IFtpbmxpbmVdCsKgX19zZV9z
eXNfcHdyaXRldjIgZnMvcmVhZF93cml0ZS5jOjExOTUgW2lubGluZV0KwqBfX3g2NF9zeXNfcHdy
aXRldjIrMHhlZi8weDE2MCBmcy9yZWFkX3dyaXRlLmM6MTE5NQrCoGRvX3N5c2NhbGxfeDY0IGFy
Y2gveDg2L2VudHJ5L2NvbW1vbi5jOjUyIFtpbmxpbmVdCsKgZG9fc3lzY2FsbF82NCsweGMzLzB4
MWQwIGFyY2gveDg2L2VudHJ5L2NvbW1vbi5jOjgzCsKgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9o
d2ZyYW1lKzB4NzcvMHg3ZgpSSVA6IDAwMzM6MHg3ZjAxYjNkYjQ3MWQKQ29kZTogMDIgYjggZmYg
ZmYgZmYgZmYgYzMgNjYgMGYgMWYgNDQgMDAgMDAgZjMgMGYgMWUgZmEgNDggODkgZjggNDggODkg
ZjcgNDggODkgZDYgNDggODkgY2EgNGQgODkgYzIgNGQgODkgYzggNGMgOGIgNGMgMjQgMDggMGYg
MDUgPDQ4PiAzZCAwMSBmMCBmZiBmZiA3MyAwMSBjMyA0OCBjNyBjMSBiMCBmZiBmZiBmZiBmNyBk
OCA2NCA4OSAwMSA0OApSU1A6IDAwMmI6MDAwMDdmMDFiMmEwN2JhOCBFRkxBR1M6IDAwMDAwMjQ2
IE9SSUdfUkFYOiAwMDAwMDAwMDAwMDAwMTQ4ClJBWDogZmZmZmZmZmZmZmZmZmZkYSBSQlg6IDAw
MDA3ZjAxYjNmNzZmODAgUkNYOiAwMDAwN2YwMWIzZGI0NzFkClJEWDogMDAwMDAwMDAwMDAwMDAw
MSBSU0k6IDAwMDAwMDAwMjAwMDAzMDAgUkRJOiAwMDAwMDAwMDAwMDAwMDA2ClJCUDogMDAwMDdm
MDFiM2UyOTQyNSBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5OiAwMDAwMDAwMDAwMDAwMDAwClIx
MDogMDAwMDAwMDAwMDAwMTAwMCBSMTE6IDAwMDAwMDAwMDAwMDAyNDYgUjEyOiAwMDAwMDAwMDAw
MDAwMDAwClIxMzogMDAwMDdmMDFiM2Y3NmY4YyBSMTQ6IDAwMDA3ZjAxYjNmNzcwMTggUjE1OiAw
MDAwN2YwMWIyYTA3ZDQwCsKgPC9UQVNLPgpNb2R1bGVzIGxpbmtlZCBpbjoKLS0tWyBlbmQgdHJh
Y2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0tClJJUDogMDAxMDpjb25zdGFudF90ZXN0X2JpdCBhcmNo
L3g4Ni9pbmNsdWRlL2FzbS9iaXRvcHMuaDoyMDYgW2lubGluZV0KUklQOiAwMDEwOmFyY2hfdGVz
dF9iaXQgYXJjaC94ODYvaW5jbHVkZS9hc20vYml0b3BzLmg6MjM4IFtpbmxpbmVdClJJUDogMDAx
MDpfdGVzdF9iaXQgaW5jbHVkZS9hc20tZ2VuZXJpYy9iaXRvcHMvaW5zdHJ1bWVudGVkLW5vbi1h
dG9taWMuaDoxNDIgW2lubGluZV0KUklQOiAwMDEwOnR4QmVnaW5Bbm9uKzB4MTE5LzB4NDAwIGZz
L2pmcy9qZnNfdHhubWdyLmM6NDY1CkNvZGU6IDI0IDI0IDQ4IDg5IDQ0IDI0IDA4IGU4IGE1IDMw
IGM0IGZlIGJlIDA4IDAwIDAwIDAwIDQ4IDg5IGRmIGU4IDY4IDczIDAwIGZmIDQ4IDg5IGRhIDQ4
IGI4IDAwIDAwIDAwIDAwIDAwIGZjIGZmIGRmIDQ4IGMxIGVhIDAzIDw4MD4gM2MgMDIgMDAgMGYg
ODUgNzcgMDIgMDAgMDAgNDggOGIgNDUgNDAgMzEgZmYgNDggYzEgZTggMDIgNDEgODkKUlNQOiAw
MDE4OmZmYTAwMDAwMTNkNmY1MDggRUZMQUdTOiAwMDAxMDIxMgpSQVg6IGRmZmZmYzAwMDAwMDAw
MDAgUkJYOiAwMDAwMDAwMDAwMDAwMDQwIFJDWDogZmZmZmZmZmY5ZWU1NmI2OApSRFg6IDAwMDAw
MDAwMDAwMDAwMDggUlNJOiAwMDAwMDAwMDAwMDAwMDA4IFJESTogMDAwMDAwMDAwMDAwMDA0MApS
QlA6IDAwMDAwMDAwMDAwMDAwMDAgUjA4OiBmZmYzZmMwMDAyN2FkZTAxIFIwOTogZmZmM2ZjMDAw
MjdhZGU5NApSMTA6IGZmZjNmYzAwMDI3YWRlOTMgUjExOiAwMDAwMDAwMDAwMDAwMDAzIFIxMjog
ZmYxMTAwMDAxMWI0NDY4MApSMTM6IGZmMTEwMDAwMjUxOTQwMDAgUjE0OiBmZjExMDAwMDI5MGQy
ODAwIFIxNTogMWZmNDAwMDAwMjdhZGVhNgpGUzogwqAwMDAwN2YwMWIyYTA4NzAwKDAwMDApIEdT
OmZmMTEwMDAwNmEyMDAwMDAoMDAwMCkga25sR1M6MDAwMDAwMDAwMDAwMDAwMApDUzogwqAwMDEw
IERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwpDUjI6IDAwMDA3ZmM2NzQ5
ODI2ZjQgQ1IzOiAwMDAwMDAwMDIzYThhMDA0IENSNDogMDAwMDAwMDAwMDc3MWVmMApQS1JVOiA4
MDAwMDAwMAotLS0tLS0tLS0tLS0tLS0tCkNvZGUgZGlzYXNzZW1ibHkgKGJlc3QgZ3Vlc3MpOgrC
oCDCoDA6IDI0IDI0IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYW5kIMKgIMKgJDB4MjQsJWFsCsKg
IMKgMjogNDggODkgNDQgMjQgMDggwqAgwqAgwqAgbW92IMKgIMKgJXJheCwweDgoJXJzcCkKwqAg
wqA3OiBlOCBhNSAzMCBjNCBmZSDCoCDCoCDCoCBjYWxscSDCoDB4ZmVjNDMwYjEKwqAgwqBjOiBi
ZSAwOCAwMCAwMCAwMCDCoCDCoCDCoCBtb3YgwqAgwqAkMHg4LCVlc2kKwqAgMTE6IDQ4IDg5IGRm
IMKgIMKgIMKgIMKgIMKgIMKgIG1vdiDCoCDCoCVyYngsJXJkaQrCoCAxNDogZTggNjggNzMgMDAg
ZmYgwqAgwqAgwqAgY2FsbHEgwqAweGZmMDA3MzgxCsKgIDE5OiA0OCA4OSBkYSDCoCDCoCDCoCDC
oCDCoCDCoCBtb3YgwqAgwqAlcmJ4LCVyZHgKwqAgMWM6IDQ4IGI4IDAwIDAwIDAwIDAwIDAwIG1v
dmFicyAkMHhkZmZmZmMwMDAwMDAwMDAwLCVyYXgKwqAgMjM6IGZjIGZmIGRmCsKgIDI2OiA0OCBj
MSBlYSAwMyDCoCDCoCDCoCDCoCDCoHNociDCoCDCoCQweDMsJXJkeAoqIDJhOiA4MCAzYyAwMiAw
MCDCoCDCoCDCoCDCoCDCoGNtcGIgwqAgJDB4MCwoJXJkeCwlcmF4LDEpIDwtLSB0cmFwcGluZyBp
bnN0cnVjdGlvbgrCoCAyZTogMGYgODUgNzcgMDIgMDAgMDAgwqAgwqBqbmUgwqAgwqAweDJhYgrC
oCAzNDogNDggOGIgNDUgNDAgwqAgwqAgwqAgwqAgwqBtb3YgwqAgwqAweDQwKCVyYnApLCVyYXgK
wqAgMzg6IDMxIGZmIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgeG9yIMKgIMKgJWVkaSwlZWRpCsKg
IDNhOiA0OCBjMSBlOCAwMiDCoCDCoCDCoCDCoCDCoHNociDCoCDCoCQweDIsJXJheArCoCAzZTog
NDEgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgcmV4LkIKwqAgM2Y6IDg5IMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIC5ieXRlIDB4ODkKCgoKCnRoYW5rcywKS3VuIEh1CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWls
aW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
