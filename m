Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4B49B7252
	for <lists+jfs-discussion@lfdr.de>; Thu, 31 Oct 2024 03:00:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t6KTR-0006em-CR;
	Thu, 31 Oct 2024 01:59:46 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghanshyam1898@gmail.com>) id 1t6KTP-0006ef-OV
 for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Oct 2024 01:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ynFW5xtxd+8iX2/i2+qR8o0VfxX1NPyp2FCK1MSrQ4I=; b=UOSmfyQUHGvhyeHASdOaAOw+0d
 qBwW2f/x5jy+Eds/FNMAT0LJZlfy2knsczsFVPykY8GRprS/ZtSZ8VOM/vBcwa55dqka9KXIZ5z84
 mb0uog4F1k9Iig2nnyxA7qxfQYJCXI99OdBC6E9ohC7n8z25tliC8evtJFhGS5zwS9DM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ynFW5xtxd+8iX2/i2+qR8o0VfxX1NPyp2FCK1MSrQ4I=; b=ltTFLUNd9XQ7tKWrTEpp85Z165
 NCzwvjYJH/cD2NZXPbz2Vdhv55Bme5YGga7A1cC5rj6K4QltQ3/wKGuwnT6QO/88TYMi0mz+3qkNy
 vOTyEvgimXwZwiyZF8mvy0GrUoqPsSAtv182MfC1EFQQmJQmvPax8LyUIxJU6ekAaH0A=;
Received: from mail-pg1-f177.google.com ([209.85.215.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t6KTP-0005iL-Sv for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Oct 2024 01:59:44 +0000
Received: by mail-pg1-f177.google.com with SMTP id
 41be03b00d2f7-7ea6a4f287bso365971a12.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 30 Oct 2024 18:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1730339973; x=1730944773; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ynFW5xtxd+8iX2/i2+qR8o0VfxX1NPyp2FCK1MSrQ4I=;
 b=Soo8eH00+uV9ipp7YJsRgJjFNpz072LLX9y2qsAe4MEpRqUbFMTlFnrbqS9VLY0Kst
 321av8t7eeS1+L7ixdWyFCYxlwOvtFH0TAzHZ6l6C9umGHGkxGwVNcig4lue8yY01+2U
 7FPot8ES5YQMLWjeCXafyq106boZOg/wPiSB65xG2qceUOYerNfhx5ywU/aaGn4WRCpS
 Z+qIQvcO2c/d2Ieau6XC3N+ue9DewB3uup3QkQ9yM/zylnfoi+UplzZ4zLCMQrcjHpmy
 xw/3z05GJ6+eD2eLwyZFzE81wRjpyAzGh/HlEv6Ni7ewpdLzrEyFifOGE8/d4zMeAVa5
 6x/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730339973; x=1730944773;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ynFW5xtxd+8iX2/i2+qR8o0VfxX1NPyp2FCK1MSrQ4I=;
 b=KIKi0tZ7OFlS8RgPefolZmxcXZrfl8GcNqy6hp9dfzLR20Eo2FPYZJICILSivmQXj+
 bfnVaHybQTgqgtQ67se/AGKt36jQ16WCUPATZk7teiGQBwSM8s5LWNoEZovV/6GDg1tS
 EIaxggwKsgGCaC4zzQotZC3Gz2iSHG8/nQMgzDO0h8ucWAaYRxkGItqpYCN8EdrY6j1Y
 0FU4Eh3828RKyapqaXu/2RMHTzkvdizID4vMXfFt60IaaYyEwVeVFl3XGaRhCPJsfTUS
 bRYWtkrNGLHVs+nGMU6gB53ZwWFlsJbbulXNTLAX4xuv0ySNsZ66hb6XRg0YVi3s4yhV
 Yxwg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXQfna7Vx0BcaBAqLPhcftc8qHX/2a54xur3hTBDMrJePekB3c7yemnn7kHaUBdGtwDcOb1BwD0sqI7tgTguw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz34rHfVA/rBSlBs+KgIkcDvWByb0jNezZXsYabbjE3f2qU8t6I
 Rf46tSokgeZgohkgb8PQeZtjXCOPS9ja27aSS709SeG0zKBIhjINMh2ZiGc1fF3jYIkWdsYyeTl
 H7BTMMzYQqC39Gqs1NvFdm8kNNsY=
X-Google-Smtp-Source: AGHT+IEQhTled4Rz6KFrJ2IKyQkoEnKEtdZKw+2W8R45nlgXhdOiQjXP9bHvdIwNwjEKbTltHi0BzL+5It6TevR+0/I=
X-Received: by 2002:a05:6a20:d80b:b0:1d9:9c6:5e7f with SMTP id
 adf61e73a8af0-1d9a83a3e2bmr23611975637.4.1730339973074; Wed, 30 Oct 2024
 18:59:33 -0700 (PDT)
MIME-Version: 1.0
References: <20241010134351.1884580-1-ghanshyam1898@gmail.com>
 <fa5dd074-0045-4f37-894f-861081f4cfdd@oracle.com>
 <7ad9c139-6627-4401-a7d6-0e488f39c5ad@oracle.com>
In-Reply-To: <7ad9c139-6627-4401-a7d6-0e488f39c5ad@oracle.com>
Date: Thu, 31 Oct 2024 07:28:56 +0530
Message-ID: <CAG-BmodOM5p=hEs8E0DUAPX5skyGZ3FusjQ7o2W374pLFjFQrQ@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Oct 31, 2024 at 3:09 AM Dave Kleikamp wrote: > >
    On 10/29/24 6:03PM, Dave Kleikamp wrote: > > On 10/10/24 8:43AM, Ghanshyam
    Agrawal wrote: > >> The value of p->header.freelist can be less [...] 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.215.177 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ghanshyam1898[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [ghanshyam1898[at]gmail.com]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.215.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1t6KTP-0005iL-Sv
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dtInsertEntry
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
From: Ghanshyam Agrawal via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
Cc: osmtendev@gmail.com, jfs-discussion@lists.sourceforge.net,
 ghandatmanas@gmail.com, eadavis@qq.com, linux-kernel@vger.kernel.org,
 syzbot+5f7f0caf9979e9d09ff8@syzkaller.appspotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBPY3QgMzEsIDIwMjQgYXQgMzowOeKAr0FNIERhdmUgS2xlaWthbXAgPGRhdmUua2xl
aWthbXBAb3JhY2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiAxMC8yOS8yNCA2OjAzUE0sIERhdmUgS2xl
aWthbXAgd3JvdGU6Cj4gPiBPbiAxMC8xMC8yNCA4OjQzQU0sIEdoYW5zaHlhbSBBZ3Jhd2FsIHdy
b3RlOgo+ID4+IFRoZSB2YWx1ZSBvZiBwLT5oZWFkZXIuZnJlZWxpc3QgY2FuIGJlIGxlc3MgdGhh
biB6ZXJvIHdoaWNoCj4gPj4gY2F1c2VzIGFuIGVycm9yIGluIGR0SW5zZXJ0RW50cnkuIEFkZGVk
IGEgY2hlY2sgaW4gZHRJbnNlcnQKPiA+PiB0byBhZGRyZXNzIGl0Lgo+ID4+Cj4gPj4gUmVwb3J0
ZWQtYnk6IHN5emJvdCs1ZjdmMGNhZjk5NzllOWQwOWZmOEBzeXprYWxsZXIuYXBwc3BvdG1haWwu
Y29tCj4gPj4gQ2xvc2VzOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9
NWY3ZjBjYWY5OTc5ZTlkMDlmZjgKPiA+PiBTaWduZWQtb2ZmLWJ5OiBHaGFuc2h5YW0gQWdyYXdh
bCA8Z2hhbnNoeWFtMTg5OEBnbWFpbC5jb20+Cj4gPgo+ID4gTG9va3MgZ29vZC4gSSdsbCBhcHBs
eSB0aGlzIG9uZS4KPgo+IFVuYXBwbHlpbmcgaXQuIFRoaXMgY2F1c2VkIHJlZ3Jlc3Npb25zIHJ1
bm5pbmcgeGZzdGVzdHMuIEknbGwgbmVlZCB0bwo+IGxvb2sgaW50byBpdCBtb3JlIGNhcmVmdWxs
eS4KPgo+IFNoYWdneQo+Cj4gPgo+ID4+IC0tLQo+ID4+ICAgZnMvamZzL2pmc19kdHJlZS5jIHwg
MiArLQo+ID4+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
Cj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc19kdHJlZS5jIGIvZnMvamZzL2pmc19k
dHJlZS5jCj4gPj4gaW5kZXggNWQzMTI3Y2E2OGE0Li41MWJiM2UxNDU1MWIgMTAwNjQ0Cj4gPj4g
LS0tIGEvZnMvamZzL2pmc19kdHJlZS5jCj4gPj4gKysrIGIvZnMvamZzL2pmc19kdHJlZS5jCj4g
Pj4gQEAgLTgzNCw3ICs4MzQsNyBAQCBpbnQgZHRJbnNlcnQodGlkX3QgdGlkLCBzdHJ1Y3QgaW5v
ZGUgKmlwLAo+ID4+ICAgICAgICAqIHRoZSBmdWxsIHBhZ2UuCj4gPj4gICAgICAgICovCj4gPj4g
ICAgICAgRFRfR0VUU0VBUkNIKGlwLCBidHN0YWNrLT50b3AsIGJuLCBtcCwgcCwgaW5kZXgpOwo+
ID4+IC0gICAgaWYgKHAtPmhlYWRlci5mcmVlbGlzdCA9PSAwKQo+ID4+ICsgICAgaWYgKHAtPmhl
YWRlci5mcmVlbGlzdCA8PSAwKQo+ID4+ICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+PiAg
ICAgICAvKgo+CgpIZWxsbyBEYXZlLAoKVGhhbmsgeW91IGZvciByZXZpZXdpbmcgYW5kIHRlc3Rp
bmcgbXkgcGF0Y2guIExldCBtZSBnbyB0aHJvdWdoIHRoZQp4ZnN0ZXN0cyByZXN1bHRzLCBmaW5k
IHRoZSBpc3N1ZSBhbmQgc2VuZCBhIHYyIGZvciB0aGlzIHBhdGNoLgoKVGhhbmtzICYgUmVnYXJk
cywKR2hhbnNoeWFtIEFncmF3YWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25A
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
