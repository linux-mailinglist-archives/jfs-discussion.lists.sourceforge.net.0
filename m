Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B98F3AFA2F
	for <lists+jfs-discussion@lfdr.de>; Tue, 22 Jun 2021 02:30:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lvUJG-0004Ir-7O; Tue, 22 Jun 2021 00:30:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1lvUJF-0004If-0x
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Jun 2021 00:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nqw3RDJ+DTyT+o1frNSrU6yxZhY99eAuItIbguQEWVc=; b=Vn8RErXvisCIXspa2zCN1onGy+
 T3nlHpLODqcs2YtK+kf6pxRtgrHRepzJ3ti6zX0MoRTlayWxmZCyGGr/Cul6LGLdVrKfjEJtqKvSg
 N14qmW+Bdl/6CV39bogl3sqL4oBj63fwcYYTGkjwG1Zy8AJm18kF72PluAZZZ/oypd/A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Nqw3RDJ+DTyT+o1frNSrU6yxZhY99eAuItIbguQEWVc=; b=g
 PLdyviGfgYfMWlqwiY+mUEMJ2R0TDyUQEThSDF/OO1bK49zDZHfMo4JaGqCUgg2CHzVJOtL1+3m6O
 a9RDctGnm5aXPLqzLIF9jGVFyMDSZ/OqbhnlLe0FQg82kYZUmomJ+CgBNo44S7H2XFDjPxx27rwOC
 uAa93Rb8cPEMurtI=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lvUJ9-006Hqw-KL
 for jfs-discussion@lists.sourceforge.net; Tue, 22 Jun 2021 00:30:37 +0000
Received: by mail-pg1-f178.google.com with SMTP id w31so15602466pga.6
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 21 Jun 2021 17:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Nqw3RDJ+DTyT+o1frNSrU6yxZhY99eAuItIbguQEWVc=;
 b=GrhNXMS0SWzU6iw+vXo9GCtOePd1pNW+VTpDK0ncZ8i6wGmF9Gm1mIOHxZot9Ed0su
 hm3kwe7tpUymfqEo3zFiFnVHGDtwBQOJWOwXeEy4nYzAveRHsd/eAhpsHnOJEwSqGjH3
 SCGxqFrI1h3ZNdTp2aH25aLDTgE85/a6eKq+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Nqw3RDJ+DTyT+o1frNSrU6yxZhY99eAuItIbguQEWVc=;
 b=VX7/4MeC5LcQmD2TePIsUiM1ibkRYiFT3WRJ5gBtj7vogBa0WHuyOf26CwqsDpF15O
 tggkBn02C2tjFV2G3Uy9Fk4QEmwIFnwlOeT+R/0w4b9/brStW5VlmT28/dMYHgn9FP8i
 j33Nreg9xcTT25eldE4GuAcckkQIJNr6r/5GpXDu++MC4dGGFhRf52T3mLGFvDvr/WYw
 0mXK7wu3ud7mZ0h/Z895UKBW1ELE+ivkXh+jymWDXAaelC1yYGWMBho1qvAF/X16vX0t
 8/gfKBv+Mwx7U3OIyY5awJ7KNn7An1k+f76iJiEb/iyOfeoH+YR1A8LrgYNWEykIHzXO
 QKAw==
X-Gm-Message-State: AOAM532TsRsCMlfnObSeXwBXWHeXdFgiPyukQhG43J3Pzk9IFKW3b9qB
 PMERkD2Dki6umQz6TOOvnZepWLpurieN+g==
X-Google-Smtp-Source: ABdhPJzw3RkUA3AzHbb59oK1W8ShH20Pt5+AZqtVwv2ZzkiD4zsX6N5Q6sbE9jkDPg0nZ3S3LPnYAw==
X-Received: by 2002:a62:53c1:0:b029:2ef:25e8:d9e5 with SMTP id
 h184-20020a6253c10000b02902ef25e8d9e5mr614646pfb.74.1624317805166; 
 Mon, 21 Jun 2021 16:23:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g29sm17578166pgm.11.2021.06.21.16.23.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 16:23:24 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Mon, 21 Jun 2021 16:23:22 -0700
Message-Id: <20210621232322.1871799-1-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=b11510bc7e50860adb5724ba145e9eb45c6c55f8;
 i=dF8ixb+THfuF0nlsv1dQ2ZPKzBL7OPmaRy5zMjzXzkQ=;
 m=dZhpAKqgH3qyGhCqzRZONrY9E1fP0G347jf3KEe/AJc=;
 p=ZB+jylUfBmb3AKcK6RN2EtlbnZH0790JymJLoekV5EE=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026;
 b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAmDRH2oACgkQiXL039xtwCY1Lg/+Lq6
 Wzj3j9XEvWvRtm7sY906hIOMjW0Bmr8KDM0B8AZgdttldYYWkqZcCaIXx3cwmjdA0oPtvoAUiymjK
 DgRCTVH0l3FisDsQBCs/Cwgz03XI9D9F5CyrrjOZrqQC0N8BpdV8bFbmLcUKXqtXgLLOYjRx+iCd5
 ksArwzkRr109ZIpdukzOxvEh1nbyvDW1s/4CunG/7DXlV2MGvdIjI7KyFn2DpGJCkwtQtwfq9lN3X
 LscLUySz82lDe/qpKoz/WsxInScnazXptKXn4baTVtvYM8OuLyoXbJjn1+DOGphofM3siWSI7LM5I
 b3ID4UXB8cNlxVwLdR/zuz21bwO7g/Lh6Ijai9fz0ktMkHUpWowjR99ymYmbfrqOCISUHziokRPfO
 cYlKzXUBeCLRMtKAfhRoEY9Hcg2rzlJw4xrzSWT3yoCvy/otfOw09IJje1S/wJS6ghQMqGuqI3wZn
 JcqrZIs6VQJu2blQzp7RL6hSuannlJXtDLoJiD0oMFvSrlQ2GyVsXkzMJ/6Y006Lzz/4WLkwjogaZ
 3/ty5ylzn08K59xlixLsJ8CKP+LVrzcBp4QZYDYvWy+6w/ILkAILuW34QAHobrdGIigbRpKz61zAc
 YSxG567tej3H5UuFd08yAdDO2oGLAo01//x1fRmW9MbFxAJrYcsFS44tythT+i5k=
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.178 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.4 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lvUJ9-006Hqw-KL
Subject: [Jfs-discussion] [PATCH] jfs: Avoid field-overflowing memcpy()
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
Cc: jfs-discussion@lists.sourceforge.net, linux-hardening@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SW4gcHJlcGFyYXRpb24gZm9yIEZPUlRJRllfU09VUkNFIHBlcmZvcm1pbmcgY29tcGlsZS10aW1l
IGFuZCBydW4tdGltZQpmaWVsZCBhcnJheSBib3VuZHMgY2hlY2tpbmcgZm9yIG1lbWNweSgpLCBt
ZW1tb3ZlKCksIGFuZCBtZW1zZXQoKSwKYXZvaWQgaW50ZW50aW9uYWxseSB3cml0aW5nIGFjcm9z
cyBuZWlnaGJvcmluZyBmaWVsZHMuCgpJbnRyb2R1Y2UgbW9yZSB1bmlvbnMgdG8gY292ZXIgdGhl
IGZ1bGwgaW5saW5lIGRhdGEgc2VjdGlvbiwgc28gdGhhdCB0aGUKZW50aXJlIDI1NiBieXRlcyBj
YW4gYmUgYWRkcmVzc2VkIGJ5IG1lbWNweSgpIHdpdGhvdXQgdGhpbmtpbmcgaXQgaXMKY3Jvc3Np
bmcgZmllbGQgYm91bmRhcmllcy4gQWRkaXRpb25hbGx5IGFkanVzdHMgZGlyIG1lbWNweSgpIHRv
IHVzZQpleGlzdGluZyB1bmlvbiBuYW1lcyB0byBnZXQgdGhlIHNhbWUgY292ZXJhZ2UuCgpkaWZm
b3Njb3BlIHNob3dzIHRoZXJlIGFyZSBubyBiaW5hcnkgZGlmZmVyZW5jZXMgYmVmb3JlL2FmdGVy
IGV4Y2VwdGluZwp0aGUgbmFtZSBvZiB0aGUgaW5pdGNhbGwsIHdoaWNoIGlzIGxpbmUgbnVtYmVy
IGJhc2VkOgoKJCBkaWZmb3Njb3BlIC0tZXhjbHVkZS1kaXJlY3RvcnktbWV0YWRhdGEgeWVzIGJl
Zm9yZS9mcyBhZnRlci9mcwotLS0gYmVmb3JlL2ZzCisrKyBhZnRlci9mcwrilIIgICAtLS0gYmVm
b3JlL2ZzL2pmcwrilJzilIDilIAgKysrIGFmdGVyL2ZzL2pmcwrilIIg4pSCICAgLS0tIGJlZm9y
ZS9mcy9qZnMvc3VwZXIubwrilIIg4pSc4pSA4pSAICsrKyBhZnRlci9mcy9qZnMvc3VwZXIubwri
lIIg4pSCIOKUnOKUgOKUgCByZWFkZWxmIC0td2lkZSAtLXN5bWJvbHMge30K4pSCIOKUgiDilIIg
QEAgLTIsMTUgKzIsMTUgQEAK4pSCIOKUgiDilIIgIFN5bWJvbCB0YWJsZSAnLnN5bXRhYicgY29u
dGFpbnMgMTU4IGVudHJpZXM6CuKUgiDilIIg4pSCICAgICBOdW06ICAgIFZhbHVlICAgICAgICAg
IFNpemUgVHlwZSAgICBCaW5kICAgVmlzICAgICAgTmR4IE5hbWUKLi4uCuKUgiDilIIg4pSCIC0g
ICAgIDU6IDAwMDAwMDAwMDAwMDAwMDAgICAgIDAgTk9UWVBFICBMT0NBTCAgREVGQVVMVCAgICA2
IF9faW5pdGNhbGxfX2ttb2RfamZzX18zMTlfMTA0OV9pbmkKdF9qZnNfZnM2CuKUgiDilIIg4pSC
ICsgICAgIDU6IDAwMDAwMDAwMDAwMDAwMDAgICAgIDAgTk9UWVBFICBMT0NBTCAgREVGQVVMVCAg
ICA2IF9faW5pdGNhbGxfX2ttb2RfamZzX18zMTlfMTA1MF9pbmkKdF9qZnNfZnM2Ci4uLgoKU2ln
bmVkLW9mZi1ieTogS2VlcyBDb29rIDxrZWVzY29va0BjaHJvbWl1bS5vcmc+Ci0tLQogZnMvamZz
L2pmc19kaW5vZGUuaCB8IDE0ICsrKysrKysrKystLS0tCiBmcy9qZnMvamZzX2ltYXAuYyAgIHwg
IDQgKystLQogZnMvamZzL2pmc19pbmNvcmUuaCB8IDEyICsrKysrKysrKystLQogZnMvamZzL3N1
cGVyLmMgICAgICB8ICAzICsrLQogNCBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCA5
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfZGlub2RlLmggYi9mcy9qZnMv
amZzX2Rpbm9kZS5oCmluZGV4IGQ2YWY3OWU5NDI2My4uNmIyMzFkMGQwMDcxIDEwMDY0NAotLS0g
YS9mcy9qZnMvamZzX2Rpbm9kZS5oCisrKyBiL2ZzL2pmcy9qZnNfZGlub2RlLmgKQEAgLTEwMSw3
ICsxMDEsNiBAQCBzdHJ1Y3QgZGlub2RlIHsKIAkJCQkJdTggdW51c2VkWzE2XTsJLyogMTY6ICov
CiAJCQkJCWR4ZF90IF9keGQ7CS8qIDE2OiAqLwogCQkJCQl1bmlvbiB7Ci0JCQkJCQlfX2xlMzIg
X3JkZXY7CS8qIDQ6ICovCiAJCQkJCQkvKgogCQkJCQkJICogVGhlIGZhc3Qgc3ltbGluayBhcmVh
CiAJCQkJCQkgKiBpcyBleHBlY3RlZCB0byBvdmVyZmxvdwpAQCAtMTA5LDkgKzEwOCwxNSBAQCBz
dHJ1Y3QgZGlub2RlIHsKIAkJCQkJCSAqIG5lZWRlZCAod2hpY2ggd2lsbCBjbGVhcgogCQkJCQkJ
ICogSU5MSU5FRUEpLgogCQkJCQkJICovCi0JCQkJCQl1OCBfZmFzdHN5bWxpbmtbMTI4XTsKLQkJ
CQkJfSBfdTsKLQkJCQkJdTggX2lubGluZWVhWzEyOF07CisJCQkJCQlzdHJ1Y3QgeworCQkJCQkJ
CXVuaW9uIHsKKwkJCQkJCQkJX19sZTMyIF9yZGV2OwkvKiA0OiAqLworCQkJCQkJCQl1OCBfZmFz
dHN5bWxpbmtbMTI4XTsKKwkJCQkJCQl9IF91OworCQkJCQkJCXU4IF9pbmxpbmVlYVsxMjhdOwor
CQkJCQkJfTsKKwkJCQkJCXU4IF9pbmxpbmVfYWxsWzI1Nl07CisJCQkJCX07CiAJCQkJfSBfc3Bl
Y2lhbDsKIAkJCX0gX3UyOwogCQl9IF9maWxlOwpAQCAtMTIyLDYgKzEyNyw3IEBAIHN0cnVjdCBk
aW5vZGUgewogI2RlZmluZSBkaV9yZGV2CQl1Ll9maWxlLl91Mi5fc3BlY2lhbC5fdS5fcmRldgog
I2RlZmluZSBkaV9mYXN0c3ltbGluawl1Ll9maWxlLl91Mi5fc3BlY2lhbC5fdS5fZmFzdHN5bWxp
bmsKICNkZWZpbmUgZGlfaW5saW5lZWEJdS5fZmlsZS5fdTIuX3NwZWNpYWwuX2lubGluZWVhCisj
ZGVmaW5lIGRpX2lubGluZV9hbGwJdS5fZmlsZS5fdTIuX3NwZWNpYWwuX2lubGluZV9hbGwKIAl9
IHU7CiB9OwogCmRpZmYgLS1naXQgYS9mcy9qZnMvamZzX2ltYXAuYyBiL2ZzL2pmcy9qZnNfaW1h
cC5jCmluZGV4IDkzN2NhMDdiNThiMS4uNGRmM2YyMjJjMzVjIDEwMDY0NAotLS0gYS9mcy9qZnMv
amZzX2ltYXAuYworKysgYi9mcy9qZnMvamZzX2ltYXAuYwpAQCAtNzYzLDcgKzc2Myw3IEBAIGlu
dCBkaVdyaXRlKHRpZF90IHRpZCwgc3RydWN0IGlub2RlICppcCkKIAkJbHYgPSAmIGRpbGluZWxv
Y2stPmx2W2RpbGluZWxvY2stPmluZGV4XTsKIAkJbHYtPm9mZnNldCA9IChkaW9mZnNldCArIDIg
KiAxMjgpID4+IEwySU5PREVTTE9UU0laRTsKIAkJbHYtPmxlbmd0aCA9IDI7Ci0JCW1lbWNweSgm
ZHAtPmRpX2Zhc3RzeW1saW5rLCBqZnNfaXAtPmlfaW5saW5lLCBJREFUQVNJWkUpOworCQltZW1j
cHkoJmRwLT5kaV9pbmxpbmVfYWxsLCBqZnNfaXAtPmlfaW5saW5lX2FsbCwgSURBVEFTSVpFKTsK
IAkJZGlsaW5lbG9jay0+aW5kZXgrKzsKIAl9CiAJLyoKQEAgLTMwODQsNyArMzA4NCw3IEBAIHN0
YXRpYyBpbnQgY29weV9mcm9tX2Rpbm9kZShzdHJ1Y3QgZGlub2RlICogZGlwLCBzdHJ1Y3QgaW5v
ZGUgKmlwKQogCX0KIAogCWlmIChTX0lTRElSKGlwLT5pX21vZGUpKSB7Ci0JCW1lbWNweSgmamZz
X2lwLT5pX2RpcnRhYmxlLCAmZGlwLT5kaV9kaXJ0YWJsZSwgMzg0KTsKKwkJbWVtY3B5KCZqZnNf
aXAtPnUuZGlyLCAmZGlwLT51Ll9kaXIsIDM4NCk7CiAJfSBlbHNlIGlmIChTX0lTUkVHKGlwLT5p
X21vZGUpIHx8IFNfSVNMTksoaXAtPmlfbW9kZSkpIHsKIAkJbWVtY3B5KCZqZnNfaXAtPmlfeHRy
b290LCAmZGlwLT5kaV94dHJvb3QsIDI4OCk7CiAJfSBlbHNlCmRpZmYgLS1naXQgYS9mcy9qZnMv
amZzX2luY29yZS5oIGIvZnMvamZzL2pmc19pbmNvcmUuaAppbmRleCBhNDY2ZWM0MWNmYmIuLjcy
MWRlZjY5ZTczMiAxMDA2NDQKLS0tIGEvZnMvamZzL2pmc19pbmNvcmUuaAorKysgYi9mcy9qZnMv
amZzX2luY29yZS5oCkBAIC03NywxMSArNzcsMTggQEAgc3RydWN0IGpmc19pbm9kZV9pbmZvIHsK
IAkJCXVuY2hhciBfdW51c2VkWzE2XTsJLyogMTY6ICovCiAJCQlkeGRfdCBfZHhkOwkJLyogMTY6
ICovCiAJCQkvKiBfaW5saW5lIG1heSBvdmVyZmxvdyBpbnRvIF9pbmxpbmVfZWEgd2hlbiBuZWVk
ZWQgKi8KLQkJCXVuY2hhciBfaW5saW5lWzEyOF07CS8qIDEyODogaW5saW5lIHN5bWxpbmsgKi8K
IAkJCS8qIF9pbmxpbmVfZWEgbWF5IG92ZXJsYXkgdGhlIGxhc3QgcGFydCBvZgogCQkJICogZmls
ZS5feHRyb290IGlmIG1heGVudHJ5ID0gWFRST09USU5JVFNMT1QKIAkJCSAqLwotCQkJdW5jaGFy
IF9pbmxpbmVfZWFbMTI4XTsJLyogMTI4OiBpbmxpbmUgZXh0ZW5kZWQgYXR0ciAqLworCQkJdW5p
b24geworCQkJCXN0cnVjdCB7CisJCQkJCS8qIDEyODogaW5saW5lIHN5bWxpbmsgKi8KKwkJCQkJ
dW5jaGFyIF9pbmxpbmVbMTI4XTsKKwkJCQkJLyogMTI4OiBpbmxpbmUgZXh0ZW5kZWQgYXR0ciAq
LworCQkJCQl1bmNoYXIgX2lubGluZV9lYVsxMjhdOworCQkJCX07CisJCQkJdW5jaGFyIF9pbmxp
bmVfYWxsWzI1Nl07CisJCQl9OwogCQl9IGxpbms7CiAJfSB1OwogI2lmZGVmIENPTkZJR19RVU9U
QQpAQCAtOTYsNiArMTAzLDcgQEAgc3RydWN0IGpmc19pbm9kZV9pbmZvIHsKICNkZWZpbmUgaV9k
dHJvb3QgdS5kaXIuX2R0cm9vdAogI2RlZmluZSBpX2lubGluZSB1LmxpbmsuX2lubGluZQogI2Rl
ZmluZSBpX2lubGluZV9lYSB1LmxpbmsuX2lubGluZV9lYQorI2RlZmluZSBpX2lubGluZV9hbGwg
dS5saW5rLl9pbmxpbmVfYWxsCiAKICNkZWZpbmUgSVJFQURfTE9DSyhpcCwgc3ViY2xhc3MpIFwK
IAlkb3duX3JlYWRfbmVzdGVkKCZKRlNfSVAoaXApLT5yZHdybG9jaywgc3ViY2xhc3MpCmRpZmYg
LS1naXQgYS9mcy9qZnMvc3VwZXIuYyBiL2ZzL2pmcy9zdXBlci5jCmluZGV4IDFmMGZmYWJiZGU1
Ni4uOTAzMGFlYWYwZjg4IDEwMDY0NAotLS0gYS9mcy9qZnMvc3VwZXIuYworKysgYi9mcy9qZnMv
c3VwZXIuYwpAQCAtOTM5LDcgKzkzOSw4IEBAIHN0YXRpYyBpbnQgX19pbml0IGluaXRfamZzX2Zz
KHZvaWQpCiAJamZzX2lub2RlX2NhY2hlcCA9CiAJICAgIGttZW1fY2FjaGVfY3JlYXRlX3VzZXJj
b3B5KCJqZnNfaXAiLCBzaXplb2Yoc3RydWN0IGpmc19pbm9kZV9pbmZvKSwKIAkJCTAsIFNMQUJf
UkVDTEFJTV9BQ0NPVU5UfFNMQUJfTUVNX1NQUkVBRHxTTEFCX0FDQ09VTlQsCi0JCQlvZmZzZXRv
ZihzdHJ1Y3QgamZzX2lub2RlX2luZm8sIGlfaW5saW5lKSwgSURBVEFTSVpFLAorCQkJb2Zmc2V0
b2Yoc3RydWN0IGpmc19pbm9kZV9pbmZvLCBpX2lubGluZV9hbGwpLAorCQkJc2l6ZW9mX2ZpZWxk
KHN0cnVjdCBqZnNfaW5vZGVfaW5mbywgaV9pbmxpbmVfYWxsKSwKIAkJCWluaXRfb25jZSk7CiAJ
aWYgKGpmc19pbm9kZV9jYWNoZXAgPT0gTlVMTCkKIAkJcmV0dXJuIC1FTk9NRU07Ci0tIAoyLjMw
LjIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZz
LWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlz
Y3Vzc2lvbgo=
