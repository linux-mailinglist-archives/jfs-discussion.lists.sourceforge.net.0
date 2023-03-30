Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C9E6CF82E
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 02:24:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phg5K-0005eV-4Q;
	Thu, 30 Mar 2023 00:24:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <shy828301@gmail.com>) id 1phfzS-000731-7n
 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 00:18:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GFrxtn9d5G2riP70vvdw/yu25SnT/y5gfBPSK+n92IU=; b=RqJborfzG0XMz3qhzphXDb5KVm
 oETJuuXNT0GLzdmwNBXJQ7E62uLBMx9OFktzdK0Teai91Rdfqho655H3accNeC1S2nn4AJTQTu4xn
 hcTzqlUIWTtazz+sprKpw4fxOvu1GRKDiHr2u7DxRssc97U5MnrZwjhtO2gP7NgqCpgo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GFrxtn9d5G2riP70vvdw/yu25SnT/y5gfBPSK+n92IU=; b=aAkLfmgVvQzcyfnvkUq/77c3GK
 0FJMZU1+OCV8X1rlvXC4s6iZGoKy4uFzKPDYmRNBMgEBsCY3UQtRFiEDgX1EWRIAVrR4U4nnYqOFi
 01Q8VfhKqs/n1SmjAUfH0V0ps5Ga0zMM+lT43zu8Q4gynkbSi7xv6XQb/oCBNOvru3Uw=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1phfzP-008wEH-QX for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Mar 2023 00:18:07 +0000
Received: by mail-pf1-f171.google.com with SMTP id i15so11430130pfo.8
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 17:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680135478;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GFrxtn9d5G2riP70vvdw/yu25SnT/y5gfBPSK+n92IU=;
 b=KYNyyyhqVrYmGqRxxi/SM2DiuO4mCIY7EWWchExvtXdrm1XO5oDXmK5Er2s+mn3Pk9
 FIXNpsZ/Ua3VaC+qLRcNGDw6wPWb33mnRw6m/M+OaV8Qr7zs9AP2V/DrGD6ZUuF2+OUB
 o6Ua7cfXYbLRFXCBVkwJDiUT5QTRRpeH/v/wIbDaCuyXgMAom79byhB+4uNMuEUEU+k4
 BH1NkWsGPTccS19YXMQKMiuXZTxILZIFb8xHIrqz8VjA3PccOBpiH9JmGdZE1DHpVHZ5
 Tn9nyYB5YUxugZgn8IAWqsmKnLtuXTMPowJSCgZlhxdNAsP1q6BF5/rUHHwmLF1RvMxB
 h9lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680135478;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=GFrxtn9d5G2riP70vvdw/yu25SnT/y5gfBPSK+n92IU=;
 b=nGMV7YM5Zm0+BDG46gQSDb7DVi/wz/3LcF+HjpMGcHGw5LUra2rPw6c5PNo/iPl+RV
 GxqFR1JrEoyXUTgRq/gGyCpB36LG6um2hVclmQh8IqE1q37Oh0biN/OCEDUBxxi3NTPW
 nk5ORVRyAk88PMth5pUk+3Kkc3qXOPGIil32yPjBZ5oA18cpFwQHfE1I2RDMHDyACVdh
 nMraRK0U4YGzLUhz0H/3DVKERgi6ul5ZZxR9az/+Spicw7PDjkffPex4CHP3QqAX8Ol5
 PdFsZuLp5vzX9/yBxyo4A01oFZ4jY0ba69Vcz0ATLqDTCUsUPd+WFR2HFPx3hh9I/DYy
 rmgQ==
X-Gm-Message-State: AAQBX9fAEiyy1qA8ZydSeQfvJDKm+Y5W/FwvSrpsulgF2hilKZWhkG4q
 HwM73qJZMHWUrKMEnIR5U4da5BxSqsl/fDpPqrU=
X-Google-Smtp-Source: AKy350aEVPs1e5xvudW7+v0SaWp4yk4rckHRftoj/jiGIVi7YJx59Ax0QojqF2IskeBIF4cBFMwK7DyHsh5zud9IPEs=
X-Received: by 2002:a05:6a00:2e9f:b0:628:1e57:afd7 with SMTP id
 fd31-20020a056a002e9f00b006281e57afd7mr10923270pfb.0.1680135478121; Wed, 29
 Mar 2023 17:17:58 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <beea645603eccbb045ad9bb777e05a085b91808a.1680108414.git.johannes.thumshirn@wdc.com>
 <3a0f0c92-63cb-3624-c2fe-049a76d1a64a@opensource.wdc.com>
In-Reply-To: <3a0f0c92-63cb-3624-c2fe-049a76d1a64a@opensource.wdc.com>
From: Yang Shi <shy828301@gmail.com>
Date: Wed, 29 Mar 2023 17:17:46 -0700
Message-ID: <CAHbLzkoRdTTbnfz3RyLQAeNJBOEVNGL2WLgRSE2eQ4nR8sRe2g@mail.gmail.com>
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Mar 29, 2023 at 4:49 PM Damien Le Moal wrote: >
   > On 3/30/23 02:06, Johannes Thumshirn wrote: > > Check if adding pages to
    clone bio fails and if bail out. > > Nope. The code retries with [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [shy828301[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [shy828301[at]gmail.com]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.210.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.210.171 listed in list.dnswl.org]
X-Headers-End: 1phfzP-008wEH-QX
X-Mailman-Approved-At: Thu, 30 Mar 2023 00:24:07 +0000
Subject: Re: [Jfs-discussion] [PATCH 18/19] dm-crypt: check if adding pages
 to clone bio fails
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Song Liu <song@kernel.org>, Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Mike Snitzer <snitzer@kernel.org>, Matthew Wilcox <willy@infradead.org>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-mm@kvack.org, dm-devel@redhat.com, David Sterba <dsterba@suse.com>,
 Hannes Reinecke <hare@suse.de>, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBNYXIgMjksIDIwMjMgYXQgNDo0OeKAr1BNIERhbWllbiBMZSBNb2FsCjxkYW1pZW4u
bGVtb2FsQG9wZW5zb3VyY2Uud2RjLmNvbT4gd3JvdGU6Cj4KPiBPbiAzLzMwLzIzIDAyOjA2LCBK
b2hhbm5lcyBUaHVtc2hpcm4gd3JvdGU6Cj4gPiBDaGVjayBpZiBhZGRpbmcgcGFnZXMgdG8gY2xv
bmUgYmlvIGZhaWxzIGFuZCBpZiBiYWlsIG91dC4KPgo+IE5vcGUuIFRoZSBjb2RlIHJldHJpZXMg
d2l0aCBkaXJlY3QgcmVjbGFpbSB1bnRpbCBpdCBzdWNjZWVkcy4gV2hpY2ggaXMgdmVyeQo+IHN1
c3BpY2lvdXMuLi4KCkl0IGlzIG5vdCByZWxhdGVkIHRvIGJpb19hZGRfcGFnZSgpIGZhaWx1cmUu
IEl0IGlzIHVzZWQgdG8gYXZvaWQgYQpyYWNlIGNvbmRpdGlvbiB3aGVuIHR3byBwcm9jZXNzZXMg
YXJlIGRlcGxldGluZyB0aGUgbWVtcG9vbApzaW11bHRhbmVvdXNseS4KCklJVUMgSSBkb24ndCB0
aGluayBwYWdlIG1lcmdlIG1heSBoYXBwZW4gZm9yIGRtLWNyeXB0LCBzbyBpcwpfX2Jpb19hZGRf
cGFnZSgpIGdvb2QgZW5vdWdoPyBJJ20gd29ya2luZyBvbiB0aGlzIGNvZGUgdG9vLCB1c2luZwpf
X2Jpb19hZGRfcGFnZSgpIHdvdWxkIG1ha2UgbXkgcGF0Y2ggZWFzaWVyLgoKPgo+ID4KPiA+IFRo
aXMgd2F5IHdlIGNhbiBtYXJrIGJpb19hZGRfcGFnZXMgYXMgX19tdXN0X2NoZWNrLgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IEpvaGFubmVzIFRodW1zaGlybiA8am9oYW5uZXMudGh1bXNoaXJuQHdk
Yy5jb20+Cj4KPiBXaXRoIHRoZSBjb21taXQgbWVzc2FnZSBmaXhlZCwKPgo+IFJldmlld2VkLWJ5
OiBEYW1pZW4gTGUgTW9hbCA8ZGFtaWVuLmxlbW9hbEBvcGVuc291cmNlLndkYy5jb20+Cj4KPgo+
IC0tCj4gRGFtaWVuIExlIE1vYWwKPiBXZXN0ZXJuIERpZ2l0YWwgUmVzZWFyY2gKPgo+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Np
b24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
