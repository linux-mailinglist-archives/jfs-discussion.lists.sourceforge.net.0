Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDEB1C4D9A
	for <lists+jfs-discussion@lfdr.de>; Tue,  5 May 2020 07:12:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jVpse-0000Nf-Bf; Tue, 05 May 2020 05:12:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Markus.Elfring@web.de>) id 1jVpsb-0000NW-Me
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 05:12:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fYRFyweUafHILoh9CceXqzn/8OJK5nGc1O9mbpYhzH8=; b=al3+L93e8CiOoSNGlPw4Bfxtz2
 KOFvwsuuWKyb3xL4AXjffMalaTQXX2pk2rFTy02a12462/YFIwhcqm0B09yGB/IWg3DAUZJ1ceIbb
 RgVkk7Zqg52D5iKjHxO406Sv4nBxFQ3uZ/RGOCZWM07s/i9buy6aH86W7d92edcQuRfY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fYRFyweUafHILoh9CceXqzn/8OJK5nGc1O9mbpYhzH8=; b=JHfZWJeYZ5LTp6jsiE6k2hLIbp
 Uh8+E2bfbNcmuDGijsSwUdjMSSEA5GrVLB1izRqArb25NpYMf0EcHEqCvkZ/w75Aj/mtur7gca4lR
 I81biqnwDRPUE3ut47uC3rxnpIpVcp3HGc3ADQGpxikU+H1dHFe7dYMuOreppJx8DETY=;
Received: from mout.web.de ([212.227.17.11])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jVpsZ-00Audb-0D
 for jfs-discussion@lists.sourceforge.net; Tue, 05 May 2020 05:12:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1588655536;
 bh=fYRFyweUafHILoh9CceXqzn/8OJK5nGc1O9mbpYhzH8=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=J8EPc6Bxas3btvHbpGmQK33zxS2QX35xblqMq6mIFCfeHDjFK/QY0EzYsaw6fZM6A
 yfeGqIowZwUG8UasQ8ZzYNEYeZGlFm+lNAd0Q0etJ4wRToumlPEcS+6OLhnborXlYO
 1DCYMOSxSlJRf/FTtwWvsUmHIf7vcQSiEePKGLUs=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([78.48.132.123]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1MpTxm-1imYMG0jfQ-00pvHX; Tue, 05
 May 2020 07:12:16 +0200
To: Jia-Ju Bai <baijiaju1990@gmail.com>, jfs-discussion@lists.sourceforge.net
References: <5ef374a5-0e2e-5c74-a827-0148c384f6e3@web.de>
 <abbb03ec-7ce3-08b6-7d08-420743067f19@gmail.com>
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Message-ID: <fa6fabec-8cc5-fc62-657f-3794e9405fac@web.de>
Date: Tue, 5 May 2020 07:12:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <abbb03ec-7ce3-08b6-7d08-420743067f19@gmail.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:BRCjE1ZGkQqlyFgMfg9s6hHFPdn5rA0Zsrs1O+HdsvrDeX0Q2zI
 4VSTj/lwOcF9orr0hWXpUYob/ABeB//V2YfER4rDon1hIjGKEtNKh8QR4jwbeNPlxRtiDvD
 a786vR21h6124yNU/XJ+fca0kximqjG20A0qJ5iSHcdcln2AjFJH/Y8iQ6g9+eXoU+hZ50X
 wmikRlZdkhc4/75e8YpKw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KXLolueGlqk=:24odGLGZvkrElwLhcDv+lI
 Jf2FRayp5Lp5YzUHUyB5iB0DdpNvJiTypBg/pepjKfThdJNJQqndJkxUIMVm6U+v8fgmbt03c
 s2th9mrUXhJf8SRBlEOYwG/DEAqDoYhTb/Hc2bjiHZILHZxAvu0A5ZFVcjJ7Y22RHrxtnINj7
 C1ZL3of7UaM94MJc0iltW4z0RTOQdzAygcTqNkUeNIuKMQQ9t22zA5m9K/2LTKPDxgaTqij35
 PxvwQNN0a2fqllCiB9qjEAqDQkoqT+GfRqPbevFidQOhzuELTcJMgteb87/5sxsuGjb/P0tTx
 dh9AWaPCr4eGkRcILxXn2/IkyyLKezqPv17iNorlgpvdoGGjS7Vz6ZQrSjuH7mvRZkT6C4Fko
 Nbx8WzVi+NoD3ZKtttwgM2VE3/XR7D6qq3IY1AXQjP7wY6ANoFB598I4kz429lvV7NA2Xty2B
 2yjHfn8Gm/5YGl30o9pl17OjhLgLw+L+QM6t1/ONlhLmDp/N/RRt+lzmc4f7lU6F3/ZSVJWcJ
 VIpa13fnSnW7M73bZuV1nPp+pV80w1UvKUiE57PFAzSWW7+yxJPLdArGOT+ktVsuGReqCzInY
 iYpZID5UhRm4m9NfdHJmkvE4ACor9RyCj8uBlhEMpp1OfBr56l4nYENEdwhu112ZljVwOyUS3
 e9GH1aXn3FPO3c4en7lZW0mbFJ4c08GgYTQqI1TOLGzrtGY0J8M/KPr9a5O72U4d7hlBiw3G3
 V+cByX+T6g7vN46XFyucncKRjZf6uKjvEjgvbhcLDr0Bcl3TLrO25UA97iFdo1z5f6zXcab8Z
 SuoAr+NrAE9VN50Y+9WCUKLvAQsU4J4HiYiLwg3PLSNhNH/cNc5AWQSNKQy54OucKzcKkdQb1
 +9XQU/D8TquLDE4ZVAjUBcaIyTBTGd9LjDAH61H1bb7ORNkR5OYNT7kwet95qClqYtEpoj+fZ
 g9ZunI7zUcCR2nr4MvP8YoqGMSrsLi1mH4CbmEJcBN6JpZQRfruvAJ29PmubDgrfZDGYFK7z9
 bbXA3ZBNf5Lk5Ti8mD0P3EM+jIquI0i56Zv7ZIFih6oVSnIn7bgyO0nj4pBgH8hXC6EWpU7il
 54VnYafHtSQTg5A48atvAPpVJen2Sum6xa1obb9s09HHssNr4AvbPwdOHncSlMR8kCdqF5Ill
 032UOvlRvT+Br7YkxyLnlRsVgl/JM2pk29ihFBrOj2flTLULQav8fqEbCdrTM3Z5pYAl9BhlH
 mSRGJjfijaUDBMweK
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (markus.elfring[at]web.de)
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1jVpsZ-00Audb-0D
Subject: Re: [Jfs-discussion] fs: jfs: fix a possible data race in txBegin()
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
Cc: Dave Kleikamp <shaggy@kernel.org>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

PiBJIGFtIG5vdCBzdXJlIGhvdyB0byBhZGQgdGhlIHRhZyAiRml4ZXMiLi4uCgpIb3cgaGVscGZ1
bCBkbyB5b3UgZmluZCB0aGUgYXZhaWxhYmxlIHNvZnR3YXJlIGRvY3VtZW50YXRpb24/Cmh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC90cmVlL0RvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0P2lk
PTQ3Y2YxYjQyMmU2MDkzYWVlMmEzZTU1ZDVlMTYyMTEyYTJjNjk4NzAjbjE4MwoKCj4gSSBuZWVk
IHRvIGZpbmQgd2hpY2ggcHJldmlvdXMgY29tbWl0IGFkZCB0aGUgY29kZSBhYm91dCB0eEJlZ2lu
KCk/CgpJIHN1Z2dlc3QgdG8gdGFrZSBhbm90aGVyIGxvb2sgYXQgY29ycmVzcG9uZGluZyBzb3Vy
Y2UgY29kZSBwbGFjZXMKYnkgYSBjb21tYW5kIGxpa2Ug4oCcZ2l0IGJsYW1l4oCdLgpodHRwczov
L2dpdC1zY20uY29tL2Jvb2svZW4vdjIvR2l0LVRvb2xzLURlYnVnZ2luZy13aXRoLUdpdHMKClJl
Z2FyZHMsCk1hcmt1cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vamZzLWRpc2N1c3Npb24K
