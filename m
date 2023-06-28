Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D8474147A
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 17:04:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEWhy-0002i8-59;
	Wed, 28 Jun 2023 15:03:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qEWhr-0002i1-Lp
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 15:03:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8wS0/tVVfYmWAxxo37y+v0M6HIvge1vajIKiOpWu/wQ=; b=UIAsfn9OCHJ3LKsaItv+zFXwm5
 eSk6vQ2U0teQc+XR4/oMZZixVteC6PG91ad+OgkhWJFQ3kaCopTjT0Woyl1fo5m0rA/S/bbtC6BHH
 WcgvgNXj1Yr+16LpTDp0dQ7BoeyLw+IcReMSGC98akeFRtnKA1ODUXKRZ62S6U53HFZc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8wS0/tVVfYmWAxxo37y+v0M6HIvge1vajIKiOpWu/wQ=; b=Vl7eI1Mz9HrBD09wNJnJAVUvpO
 N8KU6OoKVqM6a+PZP0JrGxmfRjzfuSayQf4FZZ1fskFVIV/+UPkIWiqYQuMmM7u5wzwd3dFCW4Ybh
 GOwc19NJVg4hAifnqo5a4EPUsu4Z15pffJPUhgbjLUHme3DytQhXODHiZLbFj06/6HMY=;
Received: from mail-ej1-f46.google.com ([209.85.218.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qEWhp-0007Op-Mi for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 15:03:43 +0000
Received: by mail-ej1-f46.google.com with SMTP id
 a640c23a62f3a-98e011f45ffso474652166b.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 28 Jun 2023 08:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687964615; x=1690556615;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8wS0/tVVfYmWAxxo37y+v0M6HIvge1vajIKiOpWu/wQ=;
 b=ME6xclwZwAKxvdbSiH7N5rG8ryo5U4E538D0nnDMbunKQdRXYX78PbUueytpfqLFhB
 nm08tVIGha1qYoNPECIqFEOr8sams/BfwupmWtLEwvaZJUuaKt5dth9n41ZkWYLW0OBF
 58vvJ9OclwmfZLNmoRSfzZrfs9sEBCIKTLFU59hrHX525xL9UnaJKwT/8RozQJWOIbYS
 Hn52ieE/PTBNEveYm0ZQ5w38seM577yXEC2AFMLmrOg60VLG2wH5q1Tr1UpzIHIuhT4C
 0QxQRRt7Op67cHEbPJjCJETKBf7cX9JIXGomfJtJeRl04FaW9ZXeIv7oFBWv9Xz80Pns
 aw9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687964615; x=1690556615;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8wS0/tVVfYmWAxxo37y+v0M6HIvge1vajIKiOpWu/wQ=;
 b=RZQZn+HdlwqhrmFVIMUtfAVZ26KycXZMgYrlCPASN9sgHRvXcFdbpXPfVU1/M1R/bL
 F6UzwsLVqthheNy6VSC+kmBm9qaxSmVBLM3GQkc8ETqD6VKBIFKFrRDj1ShwS52+hMNX
 7ZWDLIMjDiJzcRfDmMR6YRPI6x+1P6uqNDA/SMoU8DhTql00kc+JGqWVWeHl3rL6vbVM
 rvCvlHcCTxfv3Dk6uw6rmMeHKKTwN3ZcNi8af1w8EA9JdtEIwDRm6QzVJeDLZCjcKngW
 HRzQr4Glx7NNCi8A2yM/vWX5+nvRNdRa8sPg9u+rp5T6gePhFeJnFxinTW9qboYb9yCA
 EbAw==
X-Gm-Message-State: AC+VfDxgoIJpaEt5KfYMEgIynQ8AiV/bkg/nkY58zlyxzWW9jyUCamZg
 ykwdc9fzVyOFAiRv6lpyDg9B59ziYX6kbfpiuQs=
X-Google-Smtp-Source: ACHHUZ4bDstTP1DqJWuzHP2Nrm5f9oBvhMa44NotmxDjlNg0QAlbZg/QasCcLY/KGLdkWShNGNYgTSRq+ocENqiQQrA=
X-Received: by 2002:a17:907:6d1d:b0:992:4a1b:30e2 with SMTP id
 sa29-20020a1709076d1d00b009924a1b30e2mr3237054ejc.7.1687964614906; Wed, 28
 Jun 2023 08:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230628011439.159678-1-linux@treblig.org>
 <9343462e-6a4a-ca7b-03b8-4855e5a33b72@talpey.com>
 <ZJw4iLlFWRMq6a3S@gallifrey> <ZJw50e0pvn/IN5Gj@gallifrey>
 <90f35697-5941-d42d-b600-245454cbd040@oracle.com>
 <ZJxGFBzuhU8t5rcx@gallifrey>
In-Reply-To: <ZJxGFBzuhU8t5rcx@gallifrey>
From: Steve French <smfrench@gmail.com>
Date: Wed, 28 Jun 2023 10:03:22 -0500
Message-ID: <CAH2r5ms1UE4vAuakBLuayv1CXw3sC_OcuhtCrz5mV_ftR+=rjg@mail.gmail.com>
To: "Dr. David Alan Gilbert" <linux@treblig.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Jun 28, 2023 at 9:40 AM Dr. David Alan Gilbert wrote:
    > > > Actually, would you be ok with smb_unicode_common ? The reason is that
    > > > you end up with a module named unicode_common that [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.218.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.218.46 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qEWhp-0007Op-Mi
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
Cc: sfrench@samba.org, jfs-discussion@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tom Talpey <tom@talpey.com>, krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBKdW4gMjgsIDIwMjMgYXQgOTo0MOKAr0FNIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQK
PGxpbnV4QHRyZWJsaWcub3JnPiB3cm90ZToKPiA+ID4gQWN0dWFsbHksIHdvdWxkIHlvdSBiZSBv
ayB3aXRoIHNtYl91bmljb2RlX2NvbW1vbiA/ICBUaGUgcmVhc29uIGlzIHRoYXQKPiA+ID4geW91
IGVuZCB1cCB3aXRoIGEgbW9kdWxlIG5hbWVkIHVuaWNvZGVfY29tbW9uICB0aGF0IHNvdW5kcyB0
b28gZ2VuZXJpYy4KPiA+Cj4gPiBJJ2Qgc3VnZ2VzdCBtYWtlIGl0IGdlbmVyaWMgYW5kIG1vdmUg
aXQgdG8gZnMvbmxzLy4gSSdkIHJ1biBpdCBieSB0aGUgbmxzCj4gPiBtYWludGFpbmVycywgYnV0
IEkgZG9uJ3QgdGhpbmsgdGhlcmUgYXJlIGFueS4KPgo+IFN0ZXZlICYgVG9tIC0gd291bGQgeW91
IGJlIE9LIHdpdGggdGhhdD8KClllcyAtIGFic29sdXRlbHkKCj4gKENvcHlpbmcgaW4gR2Ficmll
bCBCZXJ0YXppLCBvd25lciBvZiBmcy91bmljb2RlOyBhbHRob3VnaCB0aGlzIGlzbid0Cj4gdXRm
LTgpCgpVbmljb2RlIFVDUy0yCgoKLS0gClRoYW5rcywKClN0ZXZlCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
