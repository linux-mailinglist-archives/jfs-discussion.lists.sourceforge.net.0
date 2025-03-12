Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9BBA5E3A8
	for <lists+jfs-discussion@lfdr.de>; Wed, 12 Mar 2025 19:29:47 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tsQpI-0003vZ-9I;
	Wed, 12 Mar 2025 18:29:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <suchitkarunakaran@gmail.com>) id 1tsQpE-0003v7-GK
 for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Mar 2025 18:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CHwHQMJua3klBUMulVATkOY1QanUZb02DTdOUUD5AYw=; b=VkPBQg4SSYfVimqzlxMuSMWZym
 UDZJr0LctBVNbP4CvZJfCypjuB6sMukPBnRNCgg62Z4bMaDOHsaIowFGG1oLfdObap8gLSH3lM5Bf
 jqnHUKLtssNQyTeY9sXuaA5RCCVvjXRlopegQwb5dXNf8zqt5cS/7F+FeLNk1JrWDuZQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CHwHQMJua3klBUMulVATkOY1QanUZb02DTdOUUD5AYw=; b=LLeZJm+oq+9jLQKu1VfICEnwjO
 mKKn+HbH8WOjSZ1epIuScmVIQJK9nCru5j2ZDppLVT5ojXiSEth6UrH/1WXfeG+wvOSKTYzZrWMyk
 0TkOszsOX8wNBAt1bswDQleuuV/AmujXaPVNvGEOe18hD/XtwAVoZAyRO1iTOSNfcFTs=;
Received: from mail-oo1-f49.google.com ([209.85.161.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tsQp9-0002SJ-9t for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Mar 2025 18:29:05 +0000
Received: by mail-oo1-f49.google.com with SMTP id
 006d021491bc7-5fe9c1c14baso65100eaf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Mar 2025 11:28:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1741804128; x=1742408928; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CHwHQMJua3klBUMulVATkOY1QanUZb02DTdOUUD5AYw=;
 b=TvECmrjxyaLQIitzq3NuJmog7n8OxXMljSLwPOfKGANcnRylBS9ZaqvKBuJPtdP8MK
 qD6wd3PzHVnuu+UMNMkp51aHu4ap52TmoyUEKWCHMoiIf4fqle/MCFkl/3bdEXRM+Lam
 Kr+nsWWsewKIRvPdYeN4DQwsspD+FY9LfwVV2GzW2e9aK8XP8fnd72td+AFV/abPy0VU
 SurJNEBvF9FF95lCzphwofZMRiPdXPyWP1iSfjEF0P8KzjgCJVmvjS17hQhoeb5r4ZiA
 KrU1f8P+ucmAJkKcfUDpHDDN48hZXUpcu7hJ9Bi1bZpOvNrPwrk5AF/iiw8EGdUrFJDs
 UWYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741804128; x=1742408928;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=CHwHQMJua3klBUMulVATkOY1QanUZb02DTdOUUD5AYw=;
 b=DqUEqdGFFOpbn/HmjfH0cs6E4O6ODVdUT4ajZhlbdleNhuFJm9EbYd2oz7ld3uL+Gi
 gkZKcua/J1B9FEwgxIYGiaFCFdPWqLEmetJQ6VKvXgJxyu+XcYqACO1vxcWyTk/QntFn
 uE4NBtdwKI6vTpBjZ9z7lslp20p4nZwZEsT8ig+he2NWSjk6KbNiTOhDEPylBlx4lLNN
 SbJMTpy0y5PuSlushyorw2DzQGvBV5pvUukaKVwlljL20FJecNMuIqmcB6QeRqbWy6Kn
 uEH+nkNhLZG3R4vGAE9Z0lKeUQlY460/h5+eXUm1zFjZBdVF/nBsj2V36SjrWXoAgszL
 Ccfg==
X-Gm-Message-State: AOJu0Yw6VN3QgpnfiIFxWDXEZV/x47MjuG2bTIFpplEB9Z8kS90FbDH4
 4J7gEaKQ+2VzF37vApcRSuq8QO8Y5JNiAwFNqocFI/956eFkdJNgmMvO8LrnaQH3d7v3IsLIJAt
 ly2Ef3sK4mC+P8mu6PufNKGYzUbE=
X-Gm-Gg: ASbGncvDE7C4Qoy/1SC+AXq7olhmL+z+84HRHRs1SO31qQWTg1BGA06V9xICmNMDfgR
 yKioTQRP1ZWpvEMYgdNYIIgOeQQFOjgTWCysGZ8DDQ79DuLbaG2MS0yRzAmPcROQ3T4pXfsOYi2
 7DDaaqeRu/e+jTa15R24Eb8JUk8X/j3rvFm0y3Xo1ZQLA=
X-Google-Smtp-Source: AGHT+IFut0Zk09cK6vm0MnorvtHXYibBHad055rpS9o3iUhWRsYEptWFMswj4MDeB58uTmXwuVz4UcQoWo32oy2j6kw=
X-Received: by 2002:a05:6820:8c6:b0:5fc:b7f4:c013 with SMTP id
 006d021491bc7-6004ab16543mr9411552eaf.5.1741804128391; Wed, 12 Mar 2025
 11:28:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250302191558.47180-1-suchitkarunakaran@gmail.com>
 <e495bf9c-9fba-44ce-99fe-04879f8dd0c2@oracle.com>
In-Reply-To: <e495bf9c-9fba-44ce-99fe-04879f8dd0c2@oracle.com>
Date: Wed, 12 Mar 2025 23:58:37 +0530
X-Gm-Features: AQ5f1JoaH6gJd1xzn1mzi_Gxo7sc9H-m4gHwbkfSxFM4MV4CBQqsV2opbOYzVU8
Message-ID: <CAO9wTFgMCsS9L1PwpkDr48t9R4hO2UvFRwbPu2mMQMP0aqD+cQ@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Dave, Thanks for the comments. I’m still a beginner so
    I wanted to share my thoughts and check with you. Almost all references to
    the xt_getpage function directly return the rc value obtained fro [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [suchitkarunakaran[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.161.49 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.161.49 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.161.49 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.161.49 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tsQp9-0002SJ-9t
Subject: Re: [Jfs-discussion] [PATCH] jfs: jfs_xtree: replace XT_GETPAGE
 macro with xt_getpage() function
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
From: Suchit K via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Suchit K <suchitkarunakaran@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGkgRGF2ZSwKVGhhbmtzIGZvciB0aGUgY29tbWVudHMuIEnigJltIHN0aWxsIGEgYmVnaW5uZXIg
c28gSSB3YW50ZWQgdG8gc2hhcmUgbXkKdGhvdWdodHMgYW5kIGNoZWNrIHdpdGggeW91LiBBbG1v
c3QgYWxsIHJlZmVyZW5jZXMgdG8gdGhlIHh0X2dldHBhZ2UKZnVuY3Rpb24gZGlyZWN0bHkgcmV0
dXJuIHRoZSByYyB2YWx1ZSBvYnRhaW5lZCBmcm9tIGl0LiBJIGZlZWwgdGhhdApjaGFuZ2luZyBp
dHMgcmV0dXJuIHR5cGUgdG8gKHh0cGFnZV90ICopIG1pZ2h0IG5vdCBiZSBpZGVhbCwgYXMgaXQK
d291bGQgcmVxdWlyZSBtb2RpZnlpbmcgdGhlIGNvZGUgaW4gbXVsdGlwbGUgcGxhY2VzLiBUaGF0
IHNhaWQsIGlmIHlvdQp0aGluayBjaGFuZ2luZyB0aGUgcmV0dXJuIHZhbHVlIGlzIHRoZSBiZXR0
ZXIgYXBwcm9hY2gsIEnigJlsbCB0cnkgdG8KY2hhbmdlIGl0LiBBbHNvLCBJ4oCZbGwgdXBkYXRl
IHN0cnVjdCBpbm9kZSoqIGlwIHRvIHN0cnVjdCBpbm9kZSogaXAuClRoYW5rcyBvbmNlIGFnYWlu
LgoKT24gVHVlLCAxMSBNYXIgMjAyNSBhdCAyMjoxOSwgRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVp
a2FtcEBvcmFjbGUuY29tPiB3cm90ZToKPgo+IE9uIDMvMi8yNSAxOjE1UE0sIFN1Y2hpdCBLYXJ1
bmFrYXJhbiB3cm90ZToKPiA+IFJlcGxhY2UgbGVnYWN5IFhUX0dFVFBBR0UgbWFjcm8gd2l0aCBh
biBpbmxpbmUgZnVuY3Rpb24gYW5kIHVwZGF0ZSBhbGwKPiA+IGluc3RhbmNlcyBvZiBYVF9HRVRQ
QUdFIGluIGpmc194dHJlZS5jIGZpbGUgdG8gdXNlIHRoZSBuZXcgZnVuY3Rpb24uCj4KPiBJIGxp
a2UgdGhlIGlkZWEsIGJ1dCBhcyBsb25nIGFzIHdlIGFyZSBjaGFuZ2luZyB0aGlzIHRvIGEgZnVu
Y3Rpb24sIEknZAo+IGxpa2UgdG8gc2ltcGxpZnkgaXQgdG8gcmV0dXJuIHRoZSB4dHBhZ2UgKHh0
cGFnZV90ICopLiBBIE5VTEwgcmV0dXJuCj4gd291bGQgaW5kaWNhdGUgYSBmYWlsdXJlLgo+Cj4g
QWxzbywgdGhlIGZpcnN0IGFyZ3VtZW50IHNob3VsZCBqdXN0IGJlICJzdHJ1Y3QgaW5vZGUgKmlw
Ii4gVGhhdCBzaG91bGQKPiBlbGltaW5hdGUgeW91ciBzZWNvbmQgcGF0Y2guCj4gICA+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBTdWNoaXQgS2FydW5ha2FyYW4gPHN1Y2hpdGthcnVuYWthcmFuQGdtYWls
LmNvbT4KPiA+IC0tLQo+ID4gICBmcy9qZnMvamZzX3h0cmVlLmMgfCA4NiArKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA1
MiBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZnMv
amZzL2pmc194dHJlZS5jIGIvZnMvamZzL2pmc194dHJlZS5jCj4gPiBpbmRleCA1ZWU2MThkMTdl
NzcuLmZiNzM2YTA2ZWE1OCAxMDA2NDQKPiA+IC0tLSBhL2ZzL2pmcy9qZnNfeHRyZWUuYwo+ID4g
KysrIGIvZnMvamZzL2pmc194dHJlZS5jCj4gPiBAQCAtNDksMjYgKzQ5LDYgQEAKPiA+Cj4gPiAg
ICNkZWZpbmUgWFRfUEFHRShJUCwgTVApIEJUX1BBR0UoSVAsIE1QLCB4dHBhZ2VfdCwgaV94dHJv
b3QpCj4gPgo+ID4gLS8qIGdldCBwYWdlIGJ1ZmZlciBmb3Igc3BlY2lmaWVkIGJsb2NrIGFkZHJl
c3MgKi8KPiA+IC0vKiBUb0RvOiBSZXBsYWNlIHRoaXMgdWdseSBtYWNybyB3aXRoIGEgZnVuY3Rp
b24gKi8KPiA+IC0jZGVmaW5lIFhUX0dFVFBBR0UoSVAsIEJOLCBNUCwgU0laRSwgUCwgUkMpICAg
ICAgICAgICAgICAgICAgICAgICAgICBcCj4gPiAtZG8geyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gLSAgICAgQlRf
R0VUUEFHRShJUCwgQk4sIE1QLCB4dHBhZ2VfdCwgU0laRSwgUCwgUkMsIGlfeHRyb290KTsgICAg
ICAgIFwKPiA+IC0gICAgIGlmICghKFJDKSkgeyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBcCj4gPiAtICAgICAgICAgICAgIGlmICgobGUxNl90b19j
cHUoKFApLT5oZWFkZXIubmV4dGluZGV4KSA8IFhURU5UUllTVEFSVCkgfHwgXAo+ID4gLSAgICAg
ICAgICAgICAgICAgKGxlMTZfdG9fY3B1KChQKS0+aGVhZGVyLm5leHRpbmRleCkgPiAgICAgICAg
ICAgICAgIFwKPiA+IC0gICAgICAgICAgICAgICAgICBsZTE2X3RvX2NwdSgoUCktPmhlYWRlci5t
YXhlbnRyeSkpIHx8ICAgICAgICAgICAgICBcCj4gPiAtICAgICAgICAgICAgICAgICAobGUxNl90
b19jcHUoKFApLT5oZWFkZXIubWF4ZW50cnkpID4gICAgICAgICAgICAgICAgXAo+ID4gLSAgICAg
ICAgICAgICAgICAgICgoKEJOKSA9PSAwKSA/IFhUUk9PVE1BWFNMT1QgOiBQU0laRSA+PiBMMlhU
U0xPVFNJWkUpKSkgeyBcCj4gPiAtICAgICAgICAgICAgICAgICAgICAgamZzX2Vycm9yKChJUCkt
Pmlfc2IsICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAiWFRfR0VUUEFHRTogeHRyZWUgcGFnZSBjb3JydXB0XG4iKTsgIFwKPiA+
IC0gICAgICAgICAgICAgICAgICAgICBCVF9QVVRQQUdFKE1QKTsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBcCj4gPiAtICAgICAgICAgICAgICAgICAgICAgTVAgPSBOVUxMOyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgIFJDID0gLUVJTzsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiA+
IC0gICAgICAgICAgICAgfSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBcCj4gPiAtICAgICB9ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gLX0gd2hpbGUgKDApCj4gPiAt
Cj4gPiAgIC8qIGZvciBjb25zaXN0ZW5jeSAqLwo+ID4gICAjZGVmaW5lIFhUX1BVVFBBR0UoTVAp
IEJUX1BVVFBBR0UoTVApCj4gPgo+ID4gQEAgLTExNCw2ICs5NCw0NCBAQCBzdGF0aWMgaW50IHh0
U3BsaXRQYWdlKHRpZF90IHRpZCwgc3RydWN0IGlub2RlICppcCwgc3RydWN0IHh0c3BsaXQgKiBz
cGxpdCwKPiA+ICAgc3RhdGljIGludCB4dFNwbGl0Um9vdCh0aWRfdCB0aWQsIHN0cnVjdCBpbm9k
ZSAqaXAsCj4gPiAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgeHRzcGxpdCAqIHNwbGl0LCBz
dHJ1Y3QgbWV0YXBhZ2UgKiogcm1wcCk7Cj4gPgo+ID4gKy8qCj4gPiArICogICB4dF9nZXRwYWdl
KCkKPiA+ICsgKgo+ID4gKyAqIGZ1bmN0aW9uOiBnZXQgdGhlIHBhZ2UgYnVmZmVyIGZvciBhIHNw
ZWNpZmllZCBibG9jayBhZGRyZXNzLgo+ID4gKyAqCj4gPiArICogcGFyYW1ldGVyczoKPiA+ICsg
KiAgIGlwICAgICAgLSBwb2ludGVyIHRvIHRoZSBpbm9kZQo+ID4gKyAqICAgYm4gICAgICAtIGJs
b2NrIG51bWJlciAoczY0KSBvZiB0aGUgeHRyZWUgcGFnZSB0byBiZSByZXRyaWV2ZWQ7Cj4gPiAr
ICogICBtcCAgICAgIC0gcG9pbnRlciB0byBhIG1ldGFwYWdlIHBvaW50ZXIgd2hlcmUgdGhlIHBh
Z2UgYnVmZmVyIGlzIHJldHVybmVkOwo+ID4gKyAqICAgc2l6ZSAgICAtIHNpemUgcGFyYW1ldGVy
IHRvIHBhc3MgdG8gQlRfR0VUUEFHRTsKPiA+ICsgKiAgIHAgICAgICAgLSBwb2ludGVyIHRvIGFu
IHh0cGFnZV90IHBvaW50ZXIgbWFwcGluZyB0aGUgcGFnZSdzIGRhdGEuCj4gPiArICoKPiA+ICsg
KiByZXR1cm5zOgo+ID4gKyAqICAgMCBvbiBzdWNjZXNzLCBvciAtRUlPIGlmIHRoZSBwYWdlIGlz
IGNvcnJ1cHQgb3IgYW4gZXJyb3Igb2NjdXJzLgo+ID4gKyAqLwo+ID4gKwo+ID4gK3N0YXRpYyBp
bmxpbmUgaW50IHh0X2dldHBhZ2Uoc3RydWN0IGlub2RlICoqaXAsIHM2NCBibiwgc3RydWN0IG1l
dGFwYWdlICoqbXAsCj4gPiArICAgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IHNpemUs
IHh0cGFnZV90ICoqcCkKPiA+ICt7Cj4gPiArICAgICBpbnQgcmM7Cj4gPiArCj4gPiArICAgICBC
VF9HRVRQQUdFKGlwLCBibiwgKm1wLCB4dHBhZ2VfdCwgc2l6ZSwgKnAsIHJjLCBpX3h0cm9vdCk7
Cj4gPiArCj4gPiArICAgICBpZiAoIXJjKSB7Cj4gPiArICAgICAgICAgICAgIGlmICgobGUxNl90
b19jcHUoKCpwKS0+aGVhZGVyLm5leHRpbmRleCkgPCBYVEVOVFJZU1RBUlQpIHx8Cj4gPiArICAg
ICAgICAgICAgICAgICAgICAgKGxlMTZfdG9fY3B1KCgqcCktPmhlYWRlci5uZXh0aW5kZXgpID4K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxlMTZfdG9fY3B1KCgqcCktPmhlYWRl
ci5tYXhlbnRyeSkpIHx8Cj4gPiArICAgICAgICAgICAgICAgICAgICAgKGxlMTZfdG9fY3B1KCgq
cCktPmhlYWRlci5tYXhlbnRyeSkgPgo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
KChibiA9PSAwKSA/IFhUUk9PVE1BWFNMT1QgOiBQU0laRSA+PiBMMlhUU0xPVFNJWkUpKSkgewo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIGpmc19lcnJvcihpcC0+aV9zYiwgInh0X2dldHBhZ2U6
IHh0cmVlIHBhZ2UgY29ycnVwdFxuIik7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgQlRfUFVU
UEFHRSgqbXApOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICptcCA9IE5VTEw7Cj4gPiArICAg
ICAgICAgICAgICAgICAgICAgcmMgPSAtRUlPOwo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArICAg
ICB9Cj4gPiArICAgICByZXR1cm4gcmM7Cj4gPiArfQo+ID4gKwo+ID4gICAvKgo+ID4gICAgKiAg
eHRMb29rdXAoKQo+ID4gICAgKgo+ID4gQEAgLTI1Miw3ICsyNzAsNyBAQCBzdGF0aWMgaW50IHh0
U2VhcmNoKHN0cnVjdCBpbm9kZSAqaXAsIHM2NCB4b2ZmLCAgIHM2NCAqbmV4dHAsCj4gPiAgICAg
ICAgKi8KPiA+ICAgICAgIGZvciAoYm4gPSAwOzspIHsKPiA+ICAgICAgICAgICAgICAgLyogZ2V0
L3BpbiB0aGUgcGFnZSB0byBzZWFyY2ggKi8KPiA+IC0gICAgICAgICAgICAgWFRfR0VUUEFHRShp
cCwgYm4sIG1wLCBQU0laRSwgcCwgcmMpOwo+ID4gKyAgICAgICAgICAgICByYyA9IHh0X2dldHBh
Z2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4gPiAgICAgICAgICAgICAgIGlmIChyYykKPiA+
ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4gPgo+ID4gQEAgLTgwNyw3ICs4MjUs
NyBAQCB4dFNwbGl0VXAodGlkX3QgdGlkLAo+ID4gICAgICAgICAgICAgICAgKiBpbnNlcnQgcm91
dGVyIGVudHJ5IGluIHBhcmVudCBmb3IgbmV3IHJpZ2h0IGNoaWxkIHBhZ2UgPHJwPgo+ID4gICAg
ICAgICAgICAgICAgKi8KPiA+ICAgICAgICAgICAgICAgLyogZ2V0L3BpbiB0aGUgcGFyZW50IHBh
Z2UgPHNwPiAqLwo+ID4gLSAgICAgICAgICAgICBYVF9HRVRQQUdFKGlwLCBwYXJlbnQtPmJuLCBz
bXAsIFBTSVpFLCBzcCwgcmMpOwo+ID4gKyAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2UoaXAs
IHBhcmVudC0+Ym4sICZzbXAsIFBTSVpFLCAmc3ApOwo+ID4gICAgICAgICAgICAgICBpZiAocmMp
IHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBYVF9QVVRQQUdFKHJjbXApOwo+ID4gICAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiByYzsKPiA+IEBAIC0xMDYyLDcgKzEwODAsNyBAQCB4dFNw
bGl0UGFnZSh0aWRfdCB0aWQsIHN0cnVjdCBpbm9kZSAqaXAsCj4gPiAgICAgICAgKiB1cGRhdGUg
cHJldmlvdXMgcG9pbnRlciBvZiBvbGQgbmV4dC9yaWdodCBwYWdlIG9mIDxzcD4KPiA+ICAgICAg
ICAqLwo+ID4gICAgICAgaWYgKG5leHRibiAhPSAwKSB7Cj4gPiAtICAgICAgICAgICAgIFhUX0dF
VFBBR0UoaXAsIG5leHRibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4gPiArICAgICAgICAgICAgIHJj
ID0geHRfZ2V0cGFnZShpcCwgbmV4dGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4gPiAgICAgICAgICAg
ICAgIGlmIChyYykgewo+ID4gICAgICAgICAgICAgICAgICAgICAgIFhUX1BVVFBBR0Uocm1wKTsK
PiA+ICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGNsZWFuX3VwOwo+ID4gQEAgLTE0MTcsNyAr
MTQzNSw3IEBAIGludCB4dEV4dGVuZCh0aWRfdCB0aWQsICAgICAgICAgLyogdHJhbnNhY3Rpb24g
aWQgKi8KPiA+ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4gPgo+ID4gICAgICAg
ICAgICAgICAvKiBnZXQgYmFjayBvbGQgcGFnZSAqLwo+ID4gLSAgICAgICAgICAgICBYVF9HRVRQ
QUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4gPiArICAgICAgICAgICAgIHJjID0geHRf
Z2V0cGFnZShpcCwgYm4sICZtcCwgUFNJWkUsICZwKTsKPiA+ICAgICAgICAgICAgICAgaWYgKHJj
KQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByYzsKPiA+ICAgICAgICAgICAgICAg
LyoKPiA+IEBAIC0xNDMzLDcgKzE0NTEsNyBAQCBpbnQgeHRFeHRlbmQodGlkX3QgdGlkLCAgICAg
ICAgIC8qIHRyYW5zYWN0aW9uIGlkICovCj4gPiAgICAgICAgICAgICAgICAgICAgICAgWFRfUFVU
UEFHRShtcCk7Cj4gPgo+ID4gICAgICAgICAgICAgICAgICAgICAgIC8qIGdldCBuZXcgY2hpbGQg
cGFnZSAqLwo+ID4gLSAgICAgICAgICAgICAgICAgICAgIFhUX0dFVFBBR0UoaXAsIGJuLCBtcCwg
UFNJWkUsIHAsIHJjKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2Uo
aXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgaWYgKHJj
KQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJjOwo+ID4KPiA+IEBA
IC0xNzExLDcgKzE3MjksNyBAQCBpbnQgeHRVcGRhdGUodGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUg
KmlwLCB4YWRfdCAqIG54YWQpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJjOwo+
ID4KPiA+ICAgICAgICAgICAgICAgLyogZ2V0IGJhY2sgb2xkIHBhZ2UgKi8KPiA+IC0gICAgICAg
ICAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1wLCBQU0laRSwgcCwgcmMpOwo+ID4gKyAgICAgICAg
ICAgICByYyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4gPiAgICAgICAg
ICAgICAgIGlmIChyYykKPiA+ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4gPiAg
ICAgICAgICAgICAgIC8qCj4gPiBAQCAtMTcyNyw3ICsxNzQ1LDcgQEAgaW50IHh0VXBkYXRlKHRp
ZF90IHRpZCwgc3RydWN0IGlub2RlICppcCwgeGFkX3QgKiBueGFkKQo+ID4gICAgICAgICAgICAg
ICAgICAgICAgIFhUX1BVVFBBR0UobXApOwo+ID4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAv
KiBnZXQgbmV3IGNoaWxkIHBhZ2UgKi8KPiA+IC0gICAgICAgICAgICAgICAgICAgICBYVF9HRVRQ
QUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
cmMgPSB4dF9nZXRwYWdlKGlwLCBibiwgJm1wLCBQU0laRSwgJnApOwo+ID4gICAgICAgICAgICAg
ICAgICAgICAgIGlmIChyYykKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVy
biByYzsKPiA+Cj4gPiBAQCAtMTc4OCw3ICsxODA2LDcgQEAgaW50IHh0VXBkYXRlKHRpZF90IHRp
ZCwgc3RydWN0IGlub2RlICppcCwgeGFkX3QgKiBueGFkKQo+ID4gICAgICAgICAgICAgICBYVF9Q
VVRQQUdFKG1wKTsKPiA+Cj4gPiAgICAgICAgICAgICAgIC8qIGdldCBuZXcgcmlnaHQgcGFnZSAq
Lwo+ID4gLSAgICAgICAgICAgICBYVF9HRVRQQUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7
Cj4gPiArICAgICAgICAgICAgIHJjID0geHRfZ2V0cGFnZShpcCwgYm4sICZtcCwgUFNJWkUsICZw
KTsKPiA+ICAgICAgICAgICAgICAgaWYgKHJjKQo+ID4gICAgICAgICAgICAgICAgICAgICAgIHJl
dHVybiByYzsKPiA+Cj4gPiBAQCAtMTg2NCw3ICsxODgyLDcgQEAgcHJpbnRmKCJ4dFVwZGF0ZS51
cGRhdGVMZWZ0LnNwbGl0IHA6MHglcFxuIiwgcCk7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuIHJjOwo+ID4KPiA+ICAgICAgICAgICAgICAgLyogZ2V0IGJhY2sgb2xkIHBhZ2UgKi8K
PiA+IC0gICAgICAgICAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1wLCBQU0laRSwgcCwgcmMpOwo+
ID4gKyAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7
Cj4gPiAgICAgICAgICAgICAgIGlmIChyYykKPiA+ICAgICAgICAgICAgICAgICAgICAgICByZXR1
cm4gcmM7Cj4gPgo+ID4gQEAgLTE4ODEsNyArMTg5OSw3IEBAIHByaW50ZigieHRVcGRhdGUudXBk
YXRlTGVmdC5zcGxpdCBwOjB4JXBcbiIsIHApOwo+ID4gICAgICAgICAgICAgICAgICAgICAgIFhU
X1BVVFBBR0UobXApOwo+ID4KPiA+ICAgICAgICAgICAgICAgICAgICAgICAvKiBnZXQgbmV3IGNo
aWxkIHBhZ2UgKi8KPiA+IC0gICAgICAgICAgICAgICAgICAgICBYVF9HRVRQQUdFKGlwLCBibiwg
bXAsIFBTSVpFLCBwLCByYyk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmMgPSB4dF9nZXRw
YWdlKGlwLCBibiwgJm1wLCBQU0laRSwgJnApOwo+ID4gICAgICAgICAgICAgICAgICAgICAgIGlm
IChyYykKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByYzsKPiA+Cj4g
PiBAQCAtMjI2OCw3ICsyMjg2LDcgQEAgczY0IHh0VHJ1bmNhdGUodGlkX3QgdGlkLCBzdHJ1Y3Qg
aW5vZGUgKmlwLCBzNjQgbmV3c2l6ZSwgaW50IGZsYWcpCj4gPiAgICAgICAgKiBmaXJzdCBhY2Nl
c3Mgb2YgZWFjaCBwYWdlOgo+ID4gICAgICAgICovCj4gPiAgICAgICAgIGdldFBhZ2U6Cj4gPiAt
ICAgICBYVF9HRVRQQUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4gPiArICAgICByYyA9
IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4gPiAgICAgICBpZiAocmMpCj4g
PiAgICAgICAgICAgICAgIHJldHVybiByYzsKPiA+Cj4gPiBAQCAtMjUwNiw3ICsyNTI0LDcgQEAg
czY0IHh0VHJ1bmNhdGUodGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUgKmlwLCBzNjQgbmV3c2l6ZSwg
aW50IGZsYWcpCj4gPgo+ID4gICAgICAgLyogZ2V0IGJhY2sgdGhlIHBhcmVudCBwYWdlICovCj4g
PiAgICAgICBibiA9IHBhcmVudC0+Ym47Cj4gPiAtICAgICBYVF9HRVRQQUdFKGlwLCBibiwgbXAs
IFBTSVpFLCBwLCByYyk7Cj4gPiArICAgICByYyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBT
SVpFLCAmcCk7Cj4gPiAgICAgICBpZiAocmMpCj4gPiAgICAgICAgICAgICAgIHJldHVybiByYzsK
PiA+Cj4gPiBAQCAtMjc5MSw3ICsyODA5LDcgQEAgczY0IHh0VHJ1bmNhdGVfcG1hcCh0aWRfdCB0
aWQsIHN0cnVjdCBpbm9kZSAqaXAsIHM2NCBjb21taXR0ZWRfc2l6ZSkKPiA+ICAgICAgICAgICAg
ICAgICogZmlyc3QgYWNjZXNzIG9mIGVhY2ggcGFnZToKPiA+ICAgICAgICAgICAgICAgICovCj4g
PiAgICAgICAgIGdldFBhZ2U6Cj4gPiAtICAgICAgICAgICAgIFhUX0dFVFBBR0UoaXAsIGJuLCBt
cCwgUFNJWkUsIHAsIHJjKTsKPiA+ICsgICAgICAgICAgICAgcmMgPSB4dF9nZXRwYWdlKGlwLCBi
biwgJm1wLCBQU0laRSwgJnApOwo+ID4gICAgICAgICAgICAgICBpZiAocmMpCj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIHJjOwo+ID4KPiA+IEBAIC0yODM2LDcgKzI4NTQsNyBAQCBz
NjQgeHRUcnVuY2F0ZV9wbWFwKHRpZF90IHRpZCwgc3RydWN0IGlub2RlICppcCwgczY0IGNvbW1p
dHRlZF9zaXplKQo+ID4KPiA+ICAgICAgIC8qIGdldCBiYWNrIHRoZSBwYXJlbnQgcGFnZSAqLwo+
ID4gICAgICAgYm4gPSBwYXJlbnQtPmJuOwo+ID4gLSAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1w
LCBQU0laRSwgcCwgcmMpOwo+ID4gKyAgICAgcmMgPSB4dF9nZXRwYWdlKGlwLCBibiwgJm1wLCBQ
U0laRSwgJnApOwo+ID4gICAgICAgaWYgKHJjKQo+ID4gICAgICAgICAgICAgICByZXR1cm4gcmM7
Cj4gPgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZv
cmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMt
ZGlzY3Vzc2lvbgo=
