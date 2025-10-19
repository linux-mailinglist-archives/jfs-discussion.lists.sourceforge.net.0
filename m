Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B24F5BEE270
	for <lists+jfs-discussion@lfdr.de>; Sun, 19 Oct 2025 11:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0cdYMU7FD438IVVADJV5sJAlKSFdRb/O/PrmNcr37ac=; b=Z15LVGJfiWP8fZ+mGaZW3YM5kw
	taynvvMdJFY3zZW0pZAhw99GEVmLq7kjintALVB7Q7HWYx000QCb+ovXNiOyhqmkc2I1Y6z/1e8qF
	NU9fS5bCWhM/OOKsertmtQgLwWeGHQPh9kVYO4zfNs9v9cuWuyjpBlXFY/dCygAJ2i0E=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vAPw5-0006bI-Ff;
	Sun, 19 Oct 2025 09:42:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hsukrut3@gmail.com>) id 1vAPw3-0006bC-OE
 for jfs-discussion@lists.sourceforge.net;
 Sun, 19 Oct 2025 09:42:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BJkZeQJHCDAh/1wDzr79J7l2UMRsy3tnRyrME1bv0+8=; b=PhkccjbtGB0gT+eC09XtOh8ifj
 BjMYHLT1o7J5NZR8ba0n0ebKwUOyLWcnOsKhHq/sAAIRkw9uMQj2+dUVHzqMlALbLkF+T9KozAblD
 vBX5Oo0vNEWmh4wcESfUrL/kzQkauthOqn0di3deuLt+l+Lat3dnk0NxuL2EyxI9Gl8A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BJkZeQJHCDAh/1wDzr79J7l2UMRsy3tnRyrME1bv0+8=; b=Bmo3+vOzcAbd+p9UD0kDfmkeLH
 vNjN0DQ5zV6iEb9q/oYAwGOGKW4+Yp0ytv0qbERXgNckSWwlwaGhHhuv8PzH5YBMYCHvdb6Fj4kgz
 nzWrXDBetAhXYG5Yy87KnLHHIrG5xeMAmNnKjiwnqVMQjryxdz0uJPy9VVv0MSR+lp4s=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vAPw3-0000zl-DR for jfs-discussion@lists.sourceforge.net;
 Sun, 19 Oct 2025 09:42:43 +0000
Received: by mail-lf1-f47.google.com with SMTP id
 2adb3069b0e04-57e03279bfeso3866984e87.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 19 Oct 2025 02:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760866952; x=1761471752; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=BJkZeQJHCDAh/1wDzr79J7l2UMRsy3tnRyrME1bv0+8=;
 b=SoIyJZCM+EGntGlC4EvT9+o0Yo1NYMcMgk1DdhDQAni+zuy/PV9uA/HjZla2LVyKcm
 W8GCUDFSs/PEUfzycIAgRdfJL/LY+RRK6eyVm0v2IY3XjiCnfT+VJ64gf2FKUeTkyRUA
 z2IaJ1/iXPE4jzvfwCwlw69wwbFG2Wg7tgnwrPX2cjfl79R+1iRLQFzXwHzjgg8vo29v
 L4DEgb6lm7ECwugGypUJ+2hHXkkimru6e4wAqKkZinkdfrH667giLcMfh2Pygej4D0DW
 wEWNKl6InYFVmQ6WAcMOGtrk1fgTYEzvMdOwKdSrlCUTTx+jdLZednGBU2+hWreLa8du
 pWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760866952; x=1761471752;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=BJkZeQJHCDAh/1wDzr79J7l2UMRsy3tnRyrME1bv0+8=;
 b=Lqs4I7p7RE2V/wCYHnPbU3awOt68L8qoW/lS/UVZBIlsKKtsSDSjOZcvkNsIx7VCMd
 uLQB+jSfiGVfUzV6AwckGsE/LwCAk0w767JytMIPZXCsH+pCRPB0CVLNAdsDfC8zUZGQ
 g3gz/KOTG+zO7TZxpwdiEateXsyzjmFq0XaXWPueDDqn9xkNGYlFtII5gU6GGtfe68EJ
 dW0DUgssFnYuxuEg7ziceVdfbloemSWnWWh3utSTHVWxy8mjY5E0wDd74z1SlvvUquiz
 aFzTbc7ECNUNTHqEUl/f1SAPnTpvMSfpftL9C8DEKfbyKMsCTjvjz327CokIKhJ3tono
 tfWg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWBGDm2uEBJAVMMtdcOoCNmSgdLMrJIryevFBO4HUtwl2zNGcl+Mkw0ck0ztPKbhk/6J5dF/evdKdioxaKRTg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwajSRh0Lcv1wZhUmH1FgJBwnsSYYbF1DIJrZJ3SLQDgRawFoIK
 CQKH1w9fUQ48u7z6dM76QERtOWgNJv9WM+BRjYYtZmftxPsrTGianYtIu8MSS4pPzY+21rVYwvC
 kMs7Yto4MLYbsYiL58ZDOdJFcx5/ih7I=
X-Gm-Gg: ASbGnct8udkzm34E1pWKNDnk6qgq9gIABj1k4DlnsazhuQ+zsFbT5qIIHh8/LyXCxAC
 EYrbrssbn6LPxbqvfYCuC+QJWzEjy/KN0R38uBvcuVaVCLfXSKDCYPXLK8d7BCCLyq5OkWuV/nq
 ovuSembuHce4vUpJSrp31U/ICIYM4X/3aCX3sx2tVHuUkvpOfCimSjzJUw2wwaqNn+f8O0pqMVB
 04IKOa4/fsPr9kWPeI1Ss9WBfkhtSGWGgYeYH1A001+ST6JfbGIUJvlPkbzp/ptxA/7e4FjbB13
 02XwpN2NVTmszggrXQ==
X-Google-Smtp-Source: AGHT+IHRGUjSudRV2+iLzSpcC41cE/KbP4fHngDZHFyswv0L6Igvp4+PdxJ8FqjuwD7xavvcTfDAYgk+D5KDG/l6kNc=
X-Received: by 2002:a05:6512:3e26:b0:57e:3273:93a7 with SMTP id
 2adb3069b0e04-591d0d595a3mr4131060e87.21.1760866951430; Sun, 19 Oct 2025
 02:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <20251018053029.226506-1-hsukrut3@gmail.com>
 <c2e85681-7ce8-43e3-ba08-63f8b854c8c7@gmail.com>
In-Reply-To: <c2e85681-7ce8-43e3-ba08-63f8b854c8c7@gmail.com>
Date: Sun, 19 Oct 2025 15:12:18 +0530
X-Gm-Features: AS18NWC_eW-N0hWCemabsbKCneSKDXwgneQOnEzszGH7ffCqdynN8G-JRg8wcVE
Message-ID: <CAHCkknr6o_9zO+DYRaf-W7C46r17JUf2MFnPLm1dik=ei=LxcA@mail.gmail.com>
To: David Hunter <david.hunter.linux@gmail.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi David, On Sun, Oct 19,
 2025 at 12:50 AM David Hunter wrote: > > On 10/18/25 01:30,
 Sukrut Heroorkar wrote: > > Tested-by:
 syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com
 > > > Hey Sukrut, > [...] 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [hsukrut3(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [hsukrut3(at)gmail.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.167.47 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.47 listed in wl.mailspike.net]
X-Headers-End: 1vAPw3-0000zl-DR
Subject: Re: [Jfs-discussion] [PATCH] jfs: validate budmin to prevent
 shift-out-of-bounds in dbAllocAG()
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
From: sukrut heroorkar via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: sukrut heroorkar <hsukrut3@gmail.com>
Cc: Dave Kleikamp <shaggy@kernel.org>,
 "open list:JFS FILESYSTEM" <jfs-discussion@lists.sourceforge.net>,
 Edward Adam Davis <eadavis@qq.com>,
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 open list <linux-kernel@vger.kernel.org>,
 syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com,
 Vasiliy Kovalev <kovalev@altlinux.org>, skhan@linux.foundation.org,
 Arnaud Lecomte <contact@arnaud-lcm.com>,
 Nihar Chaithanya <niharchaithanya@gmail.com>, Rand Deeb <rand.sec96@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGkgRGF2aWQsCk9uIFN1biwgT2N0IDE5LCAyMDI1IGF0IDEyOjUw4oCvQU0gRGF2aWQgSHVudGVy
CjxkYXZpZC5odW50ZXIubGludXhAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIDEwLzE4LzI1IDAx
OjMwLCBTdWtydXQgSGVyb29ya2FyIHdyb3RlOgo+ID4gVGVzdGVkLWJ5OiBzeXpib3QrNGI3MTcw
NzFmMWVlY2IyOTcyZGZAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+Cj4KPiBIZXkgU3VrcnV0
LAo+Cj4gRGlkIHlvdSBkbyBhbnkgb3RoZXIgdGVzdGluZyBvdGhlciB0aGFuIHN5emJvdCB0ZXN0
aW5nPwpJIGFsc28gdXNlZCB0aGUgQyByZXByb2R1Y2VyIHRvIHRlc3QgbXkgZml4IGxvY2FsbHkg
d2l0aCBRRU1VIGFuZCBpdApubyBsb25nZXIgdHJpZ2dlcnMgZXJyb3IuIERvIHlvdSByZWNvbW1l
bmQgYW55Cm90aGVyIHRlc3RzPyBQbGVhc2UgbGV0IG1lIGtub3cuClRoYW5rcywKU3VrcnV0Lgo+
IFRoYW5rcywKPiBEYXZpZCBIdW50ZXIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
