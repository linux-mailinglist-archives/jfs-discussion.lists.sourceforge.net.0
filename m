Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D89FAF9ADE
	for <lists+jfs-discussion@lfdr.de>; Fri,  4 Jul 2025 20:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s8vWzW/9wG6p/ZsC8f4ah0zpMEyIwTi+B3WWlMiEp1c=; b=ZxPwBYgFeTOuOWdBQT8vLAkg4D
	GAhVTiCfru/0t9Gat2031AuuTcjU/eqPSFxa0TUJ/q+yfHq/xTS/f0RNURIE+A9iqfBV7zWe8sWJk
	/+nCDXvWQUqwqLzfROrmOdm/ygvonWpKn6jvB8qK0GcA5JrmGcyX4eOORcqVT/saVebQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uXlQy-000411-3T;
	Fri, 04 Jul 2025 18:46:52 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <slava@dubeyko.com>) id 1uXlQw-00040v-L7
 for jfs-discussion@lists.sourceforge.net;
 Fri, 04 Jul 2025 18:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lLUj9yr52QgRuAClbNBOdP/RkbfnWsisubBXRJYh1fQ=; b=coT1OK3DBKuxLc/FPusgSxKRvJ
 O2kcznXac7Uu8RB9MkhWrdftiWavsWA9rNwdiLJUA77ZjN0F6TOJLT7Gb+AkLk7N25yrg1kqZ8KlS
 hQrVirFn/bTUVV41Y1TQZ77x43r+O/nsRjbPfHPkbnvb6UQS2jghs/iTBFlzYAadlvLI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lLUj9yr52QgRuAClbNBOdP/RkbfnWsisubBXRJYh1fQ=; b=P1A0b7Idoiz299CyMIE0VamJW9
 Un/Yti1Gg6spqVOQjq7FmYhqkRLTJ+f6FtkMxyIRvHjz0a/Jg0sKQkiEkagPUePOat/QY5qo6yTHm
 FVcVYnC5KtqROtC14XjggzH8aI+7FK72FhcaIo0jPmXiLfXrL+lMtggjd2nJ3JPVAmHY=;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uXlQw-0003Y7-67 for jfs-discussion@lists.sourceforge.net;
 Fri, 04 Jul 2025 18:46:50 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 46e09a7af769-72c27166ab3so856248a34.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 04 Jul 2025 11:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dubeyko-com.20230601.gappssmtp.com; s=20230601; t=1751654804; x=1752259604;
 darn=lists.sourceforge.net; 
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=lLUj9yr52QgRuAClbNBOdP/RkbfnWsisubBXRJYh1fQ=;
 b=XpPK5weH6sHQip8FqkEcdijzVcn0jxDkjQMU76reHOQl9kr4CKiuV8slt2ELhfNoDg
 fZNxo5WTi4GEcrjzWB36zvlSIwagf11o7oBtoW46qfR4ODDPn+zwAz8lj1CPIoWhsQcT
 iOSz8y/TZ/wYhV+S6WLfMovYfR1SG30pGwGk7dVyEY2XBWBTejpcKYby1XqFZTVrgW+f
 UV4WPGmqIzhEaoS/JAZbqnefAIoALNYMOpX9i7sfCpQY346/OJQMZC9uqzi6Wk857rax
 GHFPCCIuLe7uxVHXeDXACCxZePyXOX33L610RISz5xpf+rDJrm50vxIav1XRL9OIh50i
 6jtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751654804; x=1752259604;
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lLUj9yr52QgRuAClbNBOdP/RkbfnWsisubBXRJYh1fQ=;
 b=P7pSd7CMPKpC5Oi11s5PKGWpdDIAoOzRsATqRHtJ2kxsoOF93TlgosXwsI+Vij19XC
 2iIx5BxeMHbSZUD6km1OLfDbLJaail/ZORxIixw50Im11NbE5AY0h4D5WzdULerv2ZF9
 SIqROIhAwpvfnu023ZsvjRksGwI1BoGMK9227e/ZeCHwrUct7tjMJadhgiaV00NOosP2
 pLj+6HmKPncpiVErhiUmZF3dfYcoUjS+/gGjGjpHe9/rys9gwi5wXFcDgKOyI3fN1LZx
 0dCUfSqw9GLMQ4IutYPZ/x4rH6GieX+CRxLr8FT5IaYrht5JOH02UekEHLOicz17edFQ
 N5Cw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUg3eeq4DZPe9n2SWPIdS8YPM5ydQpJUbnUIfgi9ZtlaIyHQCeNwtvgjZ869hT/lIH7tpF9wGwomq7m76iMzQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzAxzIlh3pmRgUKW4NmUnpKhApc5Mcge2mPry6G48/f0t53b0NH
 M0AVakZGsj713VAxIdaRnqbzW9s0z3GBjjmGMDWqQ+I/yRJLtfVNE9tzF11g6atL/XCCrmODE0V
 jq9ih6U+J/Q==
X-Gm-Gg: ASbGncuFzVEABWaKUpaAikHPBCfCs2JF+j+mUPXXdx1bzryLSmc6uJAl+zrYhNWVz6f
 onRXs/mXLOArEvs4y0gYMD7H9qlIBeDSiPglFrU6w1rBzI8vkIqc+6035x5xww3lS8dco+Sp/Pu
 mUV/98QPvcl3XUFH1PImAqI+pWuhGBL4+qKWKyAvkU/rHWs5fOgI8lHPT06MfVhvCW+KjVZsJO6
 YpsKxIzijjyoysFxTCfxZb+O6x+ZbnPZVE7Ii1b0mx7P9EFc8he/cGe9M9fxFFarnMrMW7s1Vlu
 QTYyYa5DqCH/inE3PbhTcEgSJ+LEmpE4J+AIXWFO3iHHy9RScH3ATEXMv5zUdn5jTp5a6+91A51
 QGT2wTN4p7DFWdAhogcc/XsP3Ja/v4Mo=
X-Google-Smtp-Source: AGHT+IG/aHreLeb27PwZvmI50YVh3KULg7kve7WZz2i4AoC208Quitrbot6B7W1w0/7tBwFUvl1n9g==
X-Received: by 2002:a05:690c:b84:b0:70f:84c8:3105 with SMTP id
 00721157ae682-71668d73139mr47948477b3.37.1751650675940; 
 Fri, 04 Jul 2025 10:37:55 -0700 (PDT)
Received: from ?IPv6:2600:1700:6476:1430:f030:281a:9e2c:722?
 ([2600:1700:6476:1430:f030:281a:9e2c:722])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-7166599fc22sm4941937b3.28.2025.07.04.10.37.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jul 2025 10:37:55 -0700 (PDT)
Message-ID: <9d9d7bbab5443bd1c3dfd7d81d9bc91debecf4ef.camel@dubeyko.com>
From: Viacheslav Dubeyko <slava@dubeyko.com>
To: Yangtao Li <frank.li@vivo.com>, axboe@kernel.dk,
 aivazian.tigran@gmail.com, 	viro@zeniv.linux.org.uk, brauner@kernel.org,
 jack@suse.cz, linkinjeon@kernel.org, 	sj1557.seo@samsung.com,
 yuezhang.mo@sony.com, glaubitz@physik.fu-berlin.de, 	shaggy@kernel.org,
 konishi.ryusuke@gmail.com, 	almaz.alexandrovich@paragon-software.com,
 me@bobcopeland.com, 	willy@infradead.org, josef@toxicpanda.com,
 kovalev@altlinux.org, dave@stgolabs.net, 	mhocko@suse.com,
 chentaotao@didiglobal.com
Date: Fri, 04 Jul 2025 10:37:52 -0700
In-Reply-To: <20250626173023.2702554-5-frank.li@vivo.com>
References: <20250626173023.2702554-1-frank.li@vivo.com>
 <20250626173023.2702554-5-frank.li@vivo.com>
Autocrypt: addr=slava@dubeyko.com; prefer-encrypt=mutual;
 keydata=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
 fAMjjkInIPg7RLGs8FiwxfcpkILP0YbVWHiNAaQ==
User-Agent: Evolution 3.56.1 (by Flathub.org) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2025-06-26 at 11:30 -0600, Yangtao Li wrote: > Now
 cont_write_begin() support DONTCACHE mode, let's set > FOP_DONTCACHE > flag
 to enable uncached buffer io support for hfs. > > Signed-off-by: [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.52 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uXlQw-0003Y7-67
Subject: Re: [Jfs-discussion] [PATCH 4/4] hfs: enable uncached buffer io
 support
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
Cc: jfs-discussion@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCAyMDI1LTA2LTI2IGF0IDExOjMwIC0wNjAwLCBZYW5ndGFvIExpIHdyb3RlOgo+IE5v
dyBjb250X3dyaXRlX2JlZ2luKCkgc3VwcG9ydCBET05UQ0FDSEUgbW9kZSwgbGV0J3Mgc2V0Cj4g
Rk9QX0RPTlRDQUNIRQo+IGZsYWcgdG8gZW5hYmxlIHVuY2FjaGVkIGJ1ZmZlciBpbyBzdXBwb3J0
IGZvciBoZnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8ZnJhbmsubGlAdml2by5j
b20+Cj4gLS0tCj4gwqBmcy9oZnMvaW5vZGUuYyB8IDEgKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2ZzL2hmcy9pbm9kZS5jIGIvZnMvaGZzL2lu
b2RlLmMKPiBpbmRleCA4NDA5ZTQ0MTIzNjYuLmE2MmY0NWU5NzQ1ZCAxMDA2NDQKPiAtLS0gYS9m
cy9oZnMvaW5vZGUuYwo+ICsrKyBiL2ZzL2hmcy9pbm9kZS5jCj4gQEAgLTY5NSw2ICs2OTUsNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucwo+IGhmc19maWxlX29wZXJhdGlv
bnMgPSB7Cj4gwqAJLmZzeW5jCQk9IGhmc19maWxlX2ZzeW5jLAo+IMKgCS5vcGVuCQk9IGhmc19m
aWxlX29wZW4sCj4gwqAJLnJlbGVhc2UJPSBoZnNfZmlsZV9yZWxlYXNlLAo+ICsJLmZvcF9mbGFn
cwk9IEZPUF9ET05UQ0FDSEUsCj4gwqB9Owo+IMKgCj4gwqBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
b2RlX29wZXJhdGlvbnMgaGZzX2ZpbGVfaW5vZGVfb3BlcmF0aW9ucyA9IHsKCkZyYW5rbHkgc3Bl
YWtpbmcsIEkgYW0gbm90IGNvbnZpbmNlZCB0aGF0IEhGUyByZWFsbHkgbmVlZCB0byBzdXBwb3J0
CnRoaXMgZmVhdHVyZS4gSXQgaXMgb2xkIGFuZCBwcmV0dHkgb2Jzb2xldGUgZmlsZSBzeXN0ZW0u
IFRoZSBtYWluIHVzZS0KY2FzZSBpcyBzaW1wbHkgc3VwcG9ydCB0aGUgY2FwYWJpbGl0eSB0byBt
b3VudCBIRlMgdm9sdW1lIGlzIGNyZWF0ZWQKdW5kZXIgTWFjIE9TIFgsIGZvciBleGFtcGxlLCBh
bmQgdG8gYWNjZXNzIHRoZSBkYXRhIHRoZXJlLiBPZiBjb3Vyc2UsCndlIGNhbiBzdXBwb3J0IHRo
aXMgZmVhdHVyZSwgYnV0IHdoYXQgaXMgdGhlIHBvaW50IG9mIHRoaXM/CgpBcyBmYXIgYXMgSSBj
YW4gc2VlLCB0aGUgZ29hbCBvZiBSV0ZfRE9OVENBQ0hFIGZlYXR1cmUgaXM6CgoiQ29tbW9uIGZv
ciBib3RoIHJlYWRzIGFuZCB3cml0ZXMgd2l0aCBSV0ZfRE9OVENBQ0hFIGlzIHRoYXQgdGhleSB1
c2UKdGhlIHBhZ2UgY2FjaGUgZm9yIElPLiBSZWFkcyB3b3JrIGp1c3QgbGlrZSBhIG5vcm1hbCBi
dWZmZXJlZCByZWFkCndvdWxkLCB3aXRoIHRoZSBvbmx5IGV4Y2VwdGlvbiBiZWluZyB0aGF0IHRo
ZSB0b3VjaGVkIHJhbmdlcyB3aWxsIGdldApwcnVuZWQgYWZ0ZXIgZGF0YSBoYXMgYmVlbiBjb3Bp
ZWQuIEZvciB3cml0ZXMsIHRoZSByYW5nZXMgd2lsbCBnZXQKd3JpdGViYWNrIGtpY2tlZCBvZmYg
YmVmb3JlIHRoZSBzeXNjYWxsIHJldHVybnMsIGFuZCB0aGVuIHdyaXRlYmFjawpjb21wbGV0aW9u
IHdpbGwgcHJ1bmUgdGhlIHJhbmdlLiIKClNvLCB3aG8gd291bGQgbGlrZSB0byBzZWUgc3VjaCBl
ZmZpY2llbmN5IGluIEhGUz8gRG8gd2UgcmVhbGx5IG5lZWQgdG8Kc3VwcG9ydCBpdCBpbiBIRlM/
IEkgdGhpbmsgdGhhdCBpdCBpcyBub3QuCgpUaGFua3MsClNsYXZhLiAgCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGlu
ZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
