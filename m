Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C0EA782EA
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Apr 2025 21:49:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tzhbj-0001Ql-Pr;
	Tue, 01 Apr 2025 19:49:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <suchitkarunakaran@gmail.com>) id 1tzhbi-0001QU-9e
 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:49:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rfO4E7eZUTHP3B8FesMK6uqI1PbbPXOrM+fmdJIE8vw=; b=jpnW1hnVoIh6s7xEE8KqmqV+Lf
 wSTXQDrl0BxD3Yi2QA48Ga6nuw8E8VQeOhBxnFSa4LUL6IhtIWqEUaqUsfTfc9OcKnMOz/XESTfTL
 MGSGzzic0Usu6h6fF6RTBEk3ZxJAfXcPxxjHWxC6ukBCVHvbObqPyEtm9YJ173fzjJBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rfO4E7eZUTHP3B8FesMK6uqI1PbbPXOrM+fmdJIE8vw=; b=fOold32+HDEIa0NnQU7LiwUu2T
 G0PcSrtMkAlgX/yVV48BpN+GLbp0MJXXlGUeeCtEFPMpKUwed7I3HiPNXiX7ch5ehEveMPciDPwZq
 cTWyei8pR3S9O4LewWJfnoS0qdGlxpmsY6wZPcDv5tvAktNaVbMY7RKI1rxX9fTfqLu0=;
Received: from mail-oa1-f49.google.com ([209.85.160.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tzhbS-0008Ot-Vd for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 19:49:10 +0000
Received: by mail-oa1-f49.google.com with SMTP id
 586e51a60fabf-2c769da02b0so3687488fac.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 01 Apr 2025 12:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743536929; x=1744141729; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rfO4E7eZUTHP3B8FesMK6uqI1PbbPXOrM+fmdJIE8vw=;
 b=c6k0DeLynPPxBZob1Aw8yYAvdVPll8VV7r8bl71zb/HEBQ9JgJiMIzc6OBka+yW8bf
 xUN8anPxCrrlHNZ867ZQpk/ggQB2bpREpzcb1CYq1d5mf/Q5AI5kxWtASBLUIAHz4+D1
 UbOSe7K007iptmiDEQCV0juLhGqAeA9AcErz8QQ/pxKya77UJoBfKoUajcj34O+fB4ZY
 /4b0Su25UdFMw88Dq/OpKw9OyFMg0pPPkt0DETZ1k9ubk/1+AFXVHZ8hQQLaIq/hDl1K
 4o16Kxyo8TLnRS0F5lHEtH5GoQBLS9Po2pCGr4e8oDbCXC73N6k7erYwN3H4lhWKyu6z
 mvaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743536929; x=1744141729;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rfO4E7eZUTHP3B8FesMK6uqI1PbbPXOrM+fmdJIE8vw=;
 b=kyaXLi3ACne+B7pRyMYI+m+blAgWNBJFvMI10D/foCYiSXM4RWBxyEe+ML35XfoqLE
 oXV216wx50fbpCxdrN8Nly4tDyUFbOzs9jYY+o5uL9kDbnylsiPUoKTw7hrLm3W6Z3Tc
 cSigGWJCLFHa7+Lr+G2FwEW7R0BY7n9BqwKnayPCwvzpHt4Nu4uMdRL7Fai39iR5FcD2
 uBJYyoDqO70SXfoakS35Y+IGDHXdbXVXpCgtMr899A+IvzjtrnlHWAJ8efjhKUbrQuGz
 NYIiPQFz0agtLbvo1XIOTvv0ugdAzgE3nyBJFZqW9XU/zNg9+UIgSA3vpbqBU3gGZ5IS
 GhnA==
X-Gm-Message-State: AOJu0YxJPyJczeVqXQb5uOPxSb2KxgQEmurVdE4mxr4b3AttQhI0Xetn
 HYCGwTIPRl7U/1sHbNEdInrk6bjePPXBcPdokMAAz96DKsVw7eGJAbAlkuhd0YaB/suHPThh3Xy
 6UA6u4h152tKLdRg+BCaT0+D8TxA=
X-Gm-Gg: ASbGncsTnrX8XR5ejhdNxaf2aq7C35t3SRK0QK9nTBHoMVtSgK2K9OuY8qyCq2j7/PE
 VqmhZVtkRxeQ/9rgU/MPpCtRF/ORt/zWnXz2ia00x3QQ4LDRjueCyneB31aKZFlUSTP7n8EoXU0
 xB1lUlQ9BoL/W4RtqnW0E3XJslJsLlaPCljMCAXmWAec0=
X-Google-Smtp-Source: AGHT+IEf13rYhRCu3emKUwYVhjhmU1fBl5KBmeELVWjG3BHNr5KvjzEubqZoe9/JVoQmNZ9QMet0TQpzbYHjduAB++s=
X-Received: by 2002:a05:6871:5ce:b0:29e:630d:bab8 with SMTP id
 586e51a60fabf-2cbcf51fda8mr8393286fac.17.1743536929154; Tue, 01 Apr 2025
 12:48:49 -0700 (PDT)
MIME-Version: 1.0
References: <20250302191558.47180-1-suchitkarunakaran@gmail.com>
 <e495bf9c-9fba-44ce-99fe-04879f8dd0c2@oracle.com>
 <CAO9wTFgMCsS9L1PwpkDr48t9R4hO2UvFRwbPu2mMQMP0aqD+cQ@mail.gmail.com>
 <1f54efc6-045b-475f-a1f1-918377af8960@oracle.com>
In-Reply-To: <1f54efc6-045b-475f-a1f1-918377af8960@oracle.com>
Date: Wed, 2 Apr 2025 01:18:37 +0530
X-Gm-Features: AQ5f1Jp7IpjINNQ5Ws1KkdC-9qtltyiYNwUMfDDc9mx-DE3X5o_SEUL7X0Ehjig
Message-ID: <CAO9wTFiOXfjbM8UEKMQzK06JMcSiP_VJUxBx7BD2257jMvdc4w@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Alright. I'll do as you suggest. Thanks On Wed, 2 Apr 2025
    at 00:40, Dave Kleikamp wrote: > > On 3/12/25 1:28PM, Suchit K wrote: > >
    Hi Dave, > > Thanks for the comments. I’m still a beginner so I wanted
   to share my > > thoughts and che [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [suchitkarunakaran[at]gmail.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.160.49 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [209.85.160.49 listed in sa-accredit.habeas.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.49 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tzhbS-0008Ot-Vd
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

QWxyaWdodC4gSSdsbCBkbyBhcyB5b3Ugc3VnZ2VzdC4gVGhhbmtzCgoKT24gV2VkLCAyIEFwciAy
MDI1IGF0IDAwOjQwLCBEYXZlIEtsZWlrYW1wIDxkYXZlLmtsZWlrYW1wQG9yYWNsZS5jb20+IHdy
b3RlOgo+Cj4gT24gMy8xMi8yNSAxOjI4UE0sIFN1Y2hpdCBLIHdyb3RlOgo+ID4gSGkgRGF2ZSwK
PiA+IFRoYW5rcyBmb3IgdGhlIGNvbW1lbnRzLiBJ4oCZbSBzdGlsbCBhIGJlZ2lubmVyIHNvIEkg
d2FudGVkIHRvIHNoYXJlIG15Cj4gPiB0aG91Z2h0cyBhbmQgY2hlY2sgd2l0aCB5b3UuIEFsbW9z
dCBhbGwgcmVmZXJlbmNlcyB0byB0aGUgeHRfZ2V0cGFnZQo+ID4gZnVuY3Rpb24gZGlyZWN0bHkg
cmV0dXJuIHRoZSByYyB2YWx1ZSBvYnRhaW5lZCBmcm9tIGl0LiBJIGZlZWwgdGhhdAo+ID4gY2hh
bmdpbmcgaXRzIHJldHVybiB0eXBlIHRvICh4dHBhZ2VfdCAqKSBtaWdodCBub3QgYmUgaWRlYWws
IGFzIGl0Cj4gPiB3b3VsZCByZXF1aXJlIG1vZGlmeWluZyB0aGUgY29kZSBpbiBtdWx0aXBsZSBw
bGFjZXMuIFRoYXQgc2FpZCwgaWYgeW91Cj4gPiB0aGluayBjaGFuZ2luZyB0aGUgcmV0dXJuIHZh
bHVlIGlzIHRoZSBiZXR0ZXIgYXBwcm9hY2gsIEnigJlsbCB0cnkgdG8KPiA+IGNoYW5nZSBpdC4g
QWxzbywgSeKAmWxsIHVwZGF0ZSBzdHJ1Y3QgaW5vZGUqKiBpcCB0byBzdHJ1Y3QgaW5vZGUqIGlw
Lgo+ID4gVGhhbmtzIG9uY2UgYWdhaW4uCj4KPiBTb3JyeSBmb3IgdGFraW5nIHNvIGxvbmcgdG8g
cmVzcG9uZC4KPgo+IEkgcmVhbGx5IHRoaW5rIHRoYXQgYXMgbG9uZyBhcyB3ZSBhcmUgcmVwbGFj
aW5nIGFuIHVnbHkgbWFjcm8gd2l0aCBhCj4gZnVuY3Rpb24sIHdlIHNob3VsZCBtYWtlIHRoZSBm
dW5jdGlvbiBhY3R1YWxseSByZXR1cm4gd2hhdCB3ZSBhcmUKPiBpbnRlcmVzdGVkIGluLiBBIGNh
c2UgY291bGQgYmUgbWFkZSBmb3IgZWl0aGVyIHRoZSBtZXRhcGFnZSBvciB0aGUKPiB4dHBhZ2Vf
dCwgYnV0IEkgd291bGQgY2hvb3NlIHRoZSB4dHBhZ2VfdC4gT2YgY291cnNlLCBpdCBzaG91bGQg
cmV0dXJuCj4gYW4gRVJSX1BUUiBpZiBpdCBmYWlscy4gSSBrbm93IGl0J3MgYSBsaXR0bGUgbW9y
ZSB3b3JrIGNoYW5naW5nIHRoZQo+IGNhbGxlcnMgdG8gaGFuZGxlIHRoYXQsIGJ1dCB0aGUgcmVz
dWx0IHdvdWxkIGJlIGEgYml0IGNsZWFuZXIuCj4KPiBUaGFua3MsCj4gU2hhZ2d5Cj4KPiA+Cj4g
PiBPbiBUdWUsIDExIE1hciAyMDI1IGF0IDIyOjE5LCBEYXZlIEtsZWlrYW1wIDxkYXZlLmtsZWlr
YW1wQG9yYWNsZS5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gT24gMy8yLzI1IDE6MTVQTSwgU3VjaGl0
IEthcnVuYWthcmFuIHdyb3RlOgo+ID4+PiBSZXBsYWNlIGxlZ2FjeSBYVF9HRVRQQUdFIG1hY3Jv
IHdpdGggYW4gaW5saW5lIGZ1bmN0aW9uIGFuZCB1cGRhdGUgYWxsCj4gPj4+IGluc3RhbmNlcyBv
ZiBYVF9HRVRQQUdFIGluIGpmc194dHJlZS5jIGZpbGUgdG8gdXNlIHRoZSBuZXcgZnVuY3Rpb24u
Cj4gPj4KPiA+PiBJIGxpa2UgdGhlIGlkZWEsIGJ1dCBhcyBsb25nIGFzIHdlIGFyZSBjaGFuZ2lu
ZyB0aGlzIHRvIGEgZnVuY3Rpb24sIEknZAo+ID4+IGxpa2UgdG8gc2ltcGxpZnkgaXQgdG8gcmV0
dXJuIHRoZSB4dHBhZ2UgKHh0cGFnZV90ICopLiBBIE5VTEwgcmV0dXJuCj4gPj4gd291bGQgaW5k
aWNhdGUgYSBmYWlsdXJlLgo+ID4+Cj4gPj4gQWxzbywgdGhlIGZpcnN0IGFyZ3VtZW50IHNob3Vs
ZCBqdXN0IGJlICJzdHJ1Y3QgaW5vZGUgKmlwIi4gVGhhdCBzaG91bGQKPiA+PiBlbGltaW5hdGUg
eW91ciBzZWNvbmQgcGF0Y2guCj4gPj4gICAgPgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBTdWNoaXQg
S2FydW5ha2FyYW4gPHN1Y2hpdGthcnVuYWthcmFuQGdtYWlsLmNvbT4KPiA+Pj4gLS0tCj4gPj4+
ICAgIGZzL2pmcy9qZnNfeHRyZWUuYyB8IDg2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLS0KPiA+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDUyIGluc2VydGlvbnMo
KyksIDM0IGRlbGV0aW9ucygtKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc194
dHJlZS5jIGIvZnMvamZzL2pmc194dHJlZS5jCj4gPj4+IGluZGV4IDVlZTYxOGQxN2U3Ny4uZmI3
MzZhMDZlYTU4IDEwMDY0NAo+ID4+PiAtLS0gYS9mcy9qZnMvamZzX3h0cmVlLmMKPiA+Pj4gKysr
IGIvZnMvamZzL2pmc194dHJlZS5jCj4gPj4+IEBAIC00OSwyNiArNDksNiBAQAo+ID4+Pgo+ID4+
PiAgICAjZGVmaW5lIFhUX1BBR0UoSVAsIE1QKSBCVF9QQUdFKElQLCBNUCwgeHRwYWdlX3QsIGlf
eHRyb290KQo+ID4+Pgo+ID4+PiAtLyogZ2V0IHBhZ2UgYnVmZmVyIGZvciBzcGVjaWZpZWQgYmxv
Y2sgYWRkcmVzcyAqLwo+ID4+PiAtLyogVG9EbzogUmVwbGFjZSB0aGlzIHVnbHkgbWFjcm8gd2l0
aCBhIGZ1bmN0aW9uICovCj4gPj4+IC0jZGVmaW5lIFhUX0dFVFBBR0UoSVAsIEJOLCBNUCwgU0la
RSwgUCwgUkMpICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gPj4+IC1kbyB7ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBc
Cj4gPj4+IC0gICAgIEJUX0dFVFBBR0UoSVAsIEJOLCBNUCwgeHRwYWdlX3QsIFNJWkUsIFAsIFJD
LCBpX3h0cm9vdCk7ICAgICAgICBcCj4gPj4+IC0gICAgIGlmICghKFJDKSkgeyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCj4gPj4+IC0gICAgICAg
ICAgICAgaWYgKChsZTE2X3RvX2NwdSgoUCktPmhlYWRlci5uZXh0aW5kZXgpIDwgWFRFTlRSWVNU
QVJUKSB8fCBcCj4gPj4+IC0gICAgICAgICAgICAgICAgIChsZTE2X3RvX2NwdSgoUCktPmhlYWRl
ci5uZXh0aW5kZXgpID4gICAgICAgICAgICAgICBcCj4gPj4+IC0gICAgICAgICAgICAgICAgICBs
ZTE2X3RvX2NwdSgoUCktPmhlYWRlci5tYXhlbnRyeSkpIHx8ICAgICAgICAgICAgICBcCj4gPj4+
IC0gICAgICAgICAgICAgICAgIChsZTE2X3RvX2NwdSgoUCktPmhlYWRlci5tYXhlbnRyeSkgPiAg
ICAgICAgICAgICAgICBcCj4gPj4+IC0gICAgICAgICAgICAgICAgICAoKChCTikgPT0gMCkgPyBY
VFJPT1RNQVhTTE9UIDogUFNJWkUgPj4gTDJYVFNMT1RTSVpFKSkpIHsgXAo+ID4+PiAtICAgICAg
ICAgICAgICAgICAgICAgamZzX2Vycm9yKChJUCktPmlfc2IsICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXAo+ID4+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJYVF9HRVRQQUdF
OiB4dHJlZSBwYWdlIGNvcnJ1cHRcbiIpOyAgXAo+ID4+PiAtICAgICAgICAgICAgICAgICAgICAg
QlRfUFVUUEFHRShNUCk7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4+PiAt
ICAgICAgICAgICAgICAgICAgICAgTVAgPSBOVUxMOyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXAo+ID4+PiAtICAgICAgICAgICAgICAgICAgICAgUkMgPSAtRUlPOyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4+PiAtICAgICAgICAgICAgIH0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+
ID4+PiAtICAgICB9ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgXAo+ID4+PiAtfSB3aGlsZSAoMCkKPiA+Pj4gLQo+ID4+PiAgICAv
KiBmb3IgY29uc2lzdGVuY3kgKi8KPiA+Pj4gICAgI2RlZmluZSBYVF9QVVRQQUdFKE1QKSBCVF9Q
VVRQQUdFKE1QKQo+ID4+Pgo+ID4+PiBAQCAtMTE0LDYgKzk0LDQ0IEBAIHN0YXRpYyBpbnQgeHRT
cGxpdFBhZ2UodGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUgKmlwLCBzdHJ1Y3QgeHRzcGxpdCAqIHNw
bGl0LAo+ID4+PiAgICBzdGF0aWMgaW50IHh0U3BsaXRSb290KHRpZF90IHRpZCwgc3RydWN0IGlu
b2RlICppcCwKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCB4dHNwbGl0ICogc3Bs
aXQsIHN0cnVjdCBtZXRhcGFnZSAqKiBybXBwKTsKPiA+Pj4KPiA+Pj4gKy8qCj4gPj4+ICsgKiAg
IHh0X2dldHBhZ2UoKQo+ID4+PiArICoKPiA+Pj4gKyAqIGZ1bmN0aW9uOiBnZXQgdGhlIHBhZ2Ug
YnVmZmVyIGZvciBhIHNwZWNpZmllZCBibG9jayBhZGRyZXNzLgo+ID4+PiArICoKPiA+Pj4gKyAq
IHBhcmFtZXRlcnM6Cj4gPj4+ICsgKiAgIGlwICAgICAgLSBwb2ludGVyIHRvIHRoZSBpbm9kZQo+
ID4+PiArICogICBibiAgICAgIC0gYmxvY2sgbnVtYmVyIChzNjQpIG9mIHRoZSB4dHJlZSBwYWdl
IHRvIGJlIHJldHJpZXZlZDsKPiA+Pj4gKyAqICAgbXAgICAgICAtIHBvaW50ZXIgdG8gYSBtZXRh
cGFnZSBwb2ludGVyIHdoZXJlIHRoZSBwYWdlIGJ1ZmZlciBpcyByZXR1cm5lZDsKPiA+Pj4gKyAq
ICAgc2l6ZSAgICAtIHNpemUgcGFyYW1ldGVyIHRvIHBhc3MgdG8gQlRfR0VUUEFHRTsKPiA+Pj4g
KyAqICAgcCAgICAgICAtIHBvaW50ZXIgdG8gYW4geHRwYWdlX3QgcG9pbnRlciBtYXBwaW5nIHRo
ZSBwYWdlJ3MgZGF0YS4KPiA+Pj4gKyAqCj4gPj4+ICsgKiByZXR1cm5zOgo+ID4+PiArICogICAw
IG9uIHN1Y2Nlc3MsIG9yIC1FSU8gaWYgdGhlIHBhZ2UgaXMgY29ycnVwdCBvciBhbiBlcnJvciBv
Y2N1cnMuCj4gPj4+ICsgKi8KPiA+Pj4gKwo+ID4+PiArc3RhdGljIGlubGluZSBpbnQgeHRfZ2V0
cGFnZShzdHJ1Y3QgaW5vZGUgKippcCwgczY0IGJuLCBzdHJ1Y3QgbWV0YXBhZ2UgKiptcCwKPiA+
Pj4gKyAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCBzaXplLCB4dHBhZ2VfdCAqKnAp
Cj4gPj4+ICt7Cj4gPj4+ICsgICAgIGludCByYzsKPiA+Pj4gKwo+ID4+PiArICAgICBCVF9HRVRQ
QUdFKGlwLCBibiwgKm1wLCB4dHBhZ2VfdCwgc2l6ZSwgKnAsIHJjLCBpX3h0cm9vdCk7Cj4gPj4+
ICsKPiA+Pj4gKyAgICAgaWYgKCFyYykgewo+ID4+PiArICAgICAgICAgICAgIGlmICgobGUxNl90
b19jcHUoKCpwKS0+aGVhZGVyLm5leHRpbmRleCkgPCBYVEVOVFJZU1RBUlQpIHx8Cj4gPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAobGUxNl90b19jcHUoKCpwKS0+aGVhZGVyLm5leHRpbmRleCkg
Pgo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsZTE2X3RvX2NwdSgoKnApLT5o
ZWFkZXIubWF4ZW50cnkpKSB8fAo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgKGxlMTZfdG9f
Y3B1KCgqcCktPmhlYWRlci5tYXhlbnRyeSkgPgo+ID4+PiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAoKGJuID09IDApID8gWFRST09UTUFYU0xPVCA6IFBTSVpFID4+IEwyWFRTTE9UU0la
RSkpKSB7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBqZnNfZXJyb3IoaXAtPmlfc2IsICJ4
dF9nZXRwYWdlOiB4dHJlZSBwYWdlIGNvcnJ1cHRcbiIpOwo+ID4+PiArICAgICAgICAgICAgICAg
ICAgICAgQlRfUFVUUEFHRSgqbXApOwo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgKm1wID0g
TlVMTDsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHJjID0gLUVJTzsKPiA+Pj4gKyAgICAg
ICAgICAgICB9Cj4gPj4+ICsgICAgIH0KPiA+Pj4gKyAgICAgcmV0dXJuIHJjOwo+ID4+PiArfQo+
ID4+PiArCj4gPj4+ICAgIC8qCj4gPj4+ICAgICAqICB4dExvb2t1cCgpCj4gPj4+ICAgICAqCj4g
Pj4+IEBAIC0yNTIsNyArMjcwLDcgQEAgc3RhdGljIGludCB4dFNlYXJjaChzdHJ1Y3QgaW5vZGUg
KmlwLCBzNjQgeG9mZiwgICBzNjQgKm5leHRwLAo+ID4+PiAgICAgICAgICovCj4gPj4+ICAgICAg
ICBmb3IgKGJuID0gMDs7KSB7Cj4gPj4+ICAgICAgICAgICAgICAgIC8qIGdldC9waW4gdGhlIHBh
Z2UgdG8gc2VhcmNoICovCj4gPj4+IC0gICAgICAgICAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1w
LCBQU0laRSwgcCwgcmMpOwo+ID4+PiArICAgICAgICAgICAgIHJjID0geHRfZ2V0cGFnZShpcCwg
Ym4sICZtcCwgUFNJWkUsICZwKTsKPiA+Pj4gICAgICAgICAgICAgICAgaWYgKHJjKQo+ID4+PiAg
ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByYzsKPiA+Pj4KPiA+Pj4gQEAgLTgwNyw3ICs4
MjUsNyBAQCB4dFNwbGl0VXAodGlkX3QgdGlkLAo+ID4+PiAgICAgICAgICAgICAgICAgKiBpbnNl
cnQgcm91dGVyIGVudHJ5IGluIHBhcmVudCBmb3IgbmV3IHJpZ2h0IGNoaWxkIHBhZ2UgPHJwPgo+
ID4+PiAgICAgICAgICAgICAgICAgKi8KPiA+Pj4gICAgICAgICAgICAgICAgLyogZ2V0L3BpbiB0
aGUgcGFyZW50IHBhZ2UgPHNwPiAqLwo+ID4+PiAtICAgICAgICAgICAgIFhUX0dFVFBBR0UoaXAs
IHBhcmVudC0+Ym4sIHNtcCwgUFNJWkUsIHNwLCByYyk7Cj4gPj4+ICsgICAgICAgICAgICAgcmMg
PSB4dF9nZXRwYWdlKGlwLCBwYXJlbnQtPmJuLCAmc21wLCBQU0laRSwgJnNwKTsKPiA+Pj4gICAg
ICAgICAgICAgICAgaWYgKHJjKSB7Cj4gPj4+ICAgICAgICAgICAgICAgICAgICAgICAgWFRfUFVU
UEFHRShyY21wKTsKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4gPj4+
IEBAIC0xMDYyLDcgKzEwODAsNyBAQCB4dFNwbGl0UGFnZSh0aWRfdCB0aWQsIHN0cnVjdCBpbm9k
ZSAqaXAsCj4gPj4+ICAgICAgICAgKiB1cGRhdGUgcHJldmlvdXMgcG9pbnRlciBvZiBvbGQgbmV4
dC9yaWdodCBwYWdlIG9mIDxzcD4KPiA+Pj4gICAgICAgICAqLwo+ID4+PiAgICAgICAgaWYgKG5l
eHRibiAhPSAwKSB7Cj4gPj4+IC0gICAgICAgICAgICAgWFRfR0VUUEFHRShpcCwgbmV4dGJuLCBt
cCwgUFNJWkUsIHAsIHJjKTsKPiA+Pj4gKyAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2UoaXAs
IG5leHRibiwgJm1wLCBQU0laRSwgJnApOwo+ID4+PiAgICAgICAgICAgICAgICBpZiAocmMpIHsK
PiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICBYVF9QVVRQQUdFKHJtcCk7Cj4gPj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgZ290byBjbGVhbl91cDsKPiA+Pj4gQEAgLTE0MTcsNyArMTQzNSw3
IEBAIGludCB4dEV4dGVuZCh0aWRfdCB0aWQsICAgICAgICAgLyogdHJhbnNhY3Rpb24gaWQgKi8K
PiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4gPj4+Cj4gPj4+ICAgICAg
ICAgICAgICAgIC8qIGdldCBiYWNrIG9sZCBwYWdlICovCj4gPj4+IC0gICAgICAgICAgICAgWFRf
R0VUUEFHRShpcCwgYm4sIG1wLCBQU0laRSwgcCwgcmMpOwo+ID4+PiArICAgICAgICAgICAgIHJj
ID0geHRfZ2V0cGFnZShpcCwgYm4sICZtcCwgUFNJWkUsICZwKTsKPiA+Pj4gICAgICAgICAgICAg
ICAgaWYgKHJjKQo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByYzsKPiA+Pj4g
ICAgICAgICAgICAgICAgLyoKPiA+Pj4gQEAgLTE0MzMsNyArMTQ1MSw3IEBAIGludCB4dEV4dGVu
ZCh0aWRfdCB0aWQsICAgICAgICAgLyogdHJhbnNhY3Rpb24gaWQgKi8KPiA+Pj4gICAgICAgICAg
ICAgICAgICAgICAgICBYVF9QVVRQQUdFKG1wKTsKPiA+Pj4KPiA+Pj4gICAgICAgICAgICAgICAg
ICAgICAgICAvKiBnZXQgbmV3IGNoaWxkIHBhZ2UgKi8KPiA+Pj4gLSAgICAgICAgICAgICAgICAg
ICAgIFhUX0dFVFBBR0UoaXAsIGJuLCBtcCwgUFNJWkUsIHAsIHJjKTsKPiA+Pj4gKyAgICAgICAg
ICAgICAgICAgICAgIHJjID0geHRfZ2V0cGFnZShpcCwgYm4sICZtcCwgUFNJWkUsICZwKTsKPiA+
Pj4gICAgICAgICAgICAgICAgICAgICAgICBpZiAocmMpCj4gPj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4gPj4+Cj4gPj4+IEBAIC0xNzExLDcgKzE3MjksNyBA
QCBpbnQgeHRVcGRhdGUodGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUgKmlwLCB4YWRfdCAqIG54YWQp
Cj4gPj4+ICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHJjOwo+ID4+Pgo+ID4+PiAgICAg
ICAgICAgICAgICAvKiBnZXQgYmFjayBvbGQgcGFnZSAqLwo+ID4+PiAtICAgICAgICAgICAgIFhU
X0dFVFBBR0UoaXAsIGJuLCBtcCwgUFNJWkUsIHAsIHJjKTsKPiA+Pj4gKyAgICAgICAgICAgICBy
YyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4gPj4+ICAgICAgICAgICAg
ICAgIGlmIChyYykKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4gPj4+
ICAgICAgICAgICAgICAgIC8qCj4gPj4+IEBAIC0xNzI3LDcgKzE3NDUsNyBAQCBpbnQgeHRVcGRh
dGUodGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUgKmlwLCB4YWRfdCAqIG54YWQpCj4gPj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgWFRfUFVUUEFHRShtcCk7Cj4gPj4+Cj4gPj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgLyogZ2V0IG5ldyBjaGlsZCBwYWdlICovCj4gPj4+IC0gICAgICAgICAgICAg
ICAgICAgICBYVF9HRVRQQUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4gPj4+ICsgICAg
ICAgICAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7
Cj4gPj4+ICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHJjKQo+ID4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIHJjOwo+ID4+Pgo+ID4+PiBAQCAtMTc4OCw3ICsxODA2
LDcgQEAgaW50IHh0VXBkYXRlKHRpZF90IHRpZCwgc3RydWN0IGlub2RlICppcCwgeGFkX3QgKiBu
eGFkKQo+ID4+PiAgICAgICAgICAgICAgICBYVF9QVVRQQUdFKG1wKTsKPiA+Pj4KPiA+Pj4gICAg
ICAgICAgICAgICAgLyogZ2V0IG5ldyByaWdodCBwYWdlICovCj4gPj4+IC0gICAgICAgICAgICAg
WFRfR0VUUEFHRShpcCwgYm4sIG1wLCBQU0laRSwgcCwgcmMpOwo+ID4+PiArICAgICAgICAgICAg
IHJjID0geHRfZ2V0cGFnZShpcCwgYm4sICZtcCwgUFNJWkUsICZwKTsKPiA+Pj4gICAgICAgICAg
ICAgICAgaWYgKHJjKQo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByYzsKPiA+
Pj4KPiA+Pj4gQEAgLTE4NjQsNyArMTg4Miw3IEBAIHByaW50ZigieHRVcGRhdGUudXBkYXRlTGVm
dC5zcGxpdCBwOjB4JXBcbiIsIHApOwo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVy
biByYzsKPiA+Pj4KPiA+Pj4gICAgICAgICAgICAgICAgLyogZ2V0IGJhY2sgb2xkIHBhZ2UgKi8K
PiA+Pj4gLSAgICAgICAgICAgICBYVF9HRVRQQUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7
Cj4gPj4+ICsgICAgICAgICAgICAgcmMgPSB4dF9nZXRwYWdlKGlwLCBibiwgJm1wLCBQU0laRSwg
JnApOwo+ID4+PiAgICAgICAgICAgICAgICBpZiAocmMpCj4gPj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgcmV0dXJuIHJjOwo+ID4+Pgo+ID4+PiBAQCAtMTg4MSw3ICsxODk5LDcgQEAgcHJpbnRm
KCJ4dFVwZGF0ZS51cGRhdGVMZWZ0LnNwbGl0IHA6MHglcFxuIiwgcCk7Cj4gPj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgWFRfUFVUUEFHRShtcCk7Cj4gPj4+Cj4gPj4+ICAgICAgICAgICAgICAg
ICAgICAgICAgLyogZ2V0IG5ldyBjaGlsZCBwYWdlICovCj4gPj4+IC0gICAgICAgICAgICAgICAg
ICAgICBYVF9HRVRQQUdFKGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4gPj4+ICsgICAgICAg
ICAgICAgICAgICAgICByYyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAsIFBTSVpFLCAmcCk7Cj4g
Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgaWYgKHJjKQo+ID4+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIHJjOwo+ID4+Pgo+ID4+PiBAQCAtMjI2OCw3ICsyMjg2LDcg
QEAgczY0IHh0VHJ1bmNhdGUodGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUgKmlwLCBzNjQgbmV3c2l6
ZSwgaW50IGZsYWcpCj4gPj4+ICAgICAgICAgKiBmaXJzdCBhY2Nlc3Mgb2YgZWFjaCBwYWdlOgo+
ID4+PiAgICAgICAgICovCj4gPj4+ICAgICAgICAgIGdldFBhZ2U6Cj4gPj4+IC0gICAgIFhUX0dF
VFBBR0UoaXAsIGJuLCBtcCwgUFNJWkUsIHAsIHJjKTsKPiA+Pj4gKyAgICAgcmMgPSB4dF9nZXRw
YWdlKGlwLCBibiwgJm1wLCBQU0laRSwgJnApOwo+ID4+PiAgICAgICAgaWYgKHJjKQo+ID4+PiAg
ICAgICAgICAgICAgICByZXR1cm4gcmM7Cj4gPj4+Cj4gPj4+IEBAIC0yNTA2LDcgKzI1MjQsNyBA
QCBzNjQgeHRUcnVuY2F0ZSh0aWRfdCB0aWQsIHN0cnVjdCBpbm9kZSAqaXAsIHM2NCBuZXdzaXpl
LCBpbnQgZmxhZykKPiA+Pj4KPiA+Pj4gICAgICAgIC8qIGdldCBiYWNrIHRoZSBwYXJlbnQgcGFn
ZSAqLwo+ID4+PiAgICAgICAgYm4gPSBwYXJlbnQtPmJuOwo+ID4+PiAtICAgICBYVF9HRVRQQUdF
KGlwLCBibiwgbXAsIFBTSVpFLCBwLCByYyk7Cj4gPj4+ICsgICAgIHJjID0geHRfZ2V0cGFnZShp
cCwgYm4sICZtcCwgUFNJWkUsICZwKTsKPiA+Pj4gICAgICAgIGlmIChyYykKPiA+Pj4gICAgICAg
ICAgICAgICAgcmV0dXJuIHJjOwo+ID4+Pgo+ID4+PiBAQCAtMjc5MSw3ICsyODA5LDcgQEAgczY0
IHh0VHJ1bmNhdGVfcG1hcCh0aWRfdCB0aWQsIHN0cnVjdCBpbm9kZSAqaXAsIHM2NCBjb21taXR0
ZWRfc2l6ZSkKPiA+Pj4gICAgICAgICAgICAgICAgICogZmlyc3QgYWNjZXNzIG9mIGVhY2ggcGFn
ZToKPiA+Pj4gICAgICAgICAgICAgICAgICovCj4gPj4+ICAgICAgICAgIGdldFBhZ2U6Cj4gPj4+
IC0gICAgICAgICAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1wLCBQU0laRSwgcCwgcmMpOwo+ID4+
PiArICAgICAgICAgICAgIHJjID0geHRfZ2V0cGFnZShpcCwgYm4sICZtcCwgUFNJWkUsICZwKTsK
PiA+Pj4gICAgICAgICAgICAgICAgaWYgKHJjKQo+ID4+PiAgICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiByYzsKPiA+Pj4KPiA+Pj4gQEAgLTI4MzYsNyArMjg1NCw3IEBAIHM2NCB4dFRydW5j
YXRlX3BtYXAodGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUgKmlwLCBzNjQgY29tbWl0dGVkX3NpemUp
Cj4gPj4+Cj4gPj4+ICAgICAgICAvKiBnZXQgYmFjayB0aGUgcGFyZW50IHBhZ2UgKi8KPiA+Pj4g
ICAgICAgIGJuID0gcGFyZW50LT5ibjsKPiA+Pj4gLSAgICAgWFRfR0VUUEFHRShpcCwgYm4sIG1w
LCBQU0laRSwgcCwgcmMpOwo+ID4+PiArICAgICByYyA9IHh0X2dldHBhZ2UoaXAsIGJuLCAmbXAs
IFBTSVpFLCAmcCk7Cj4gPj4+ICAgICAgICBpZiAocmMpCj4gPj4+ICAgICAgICAgICAgICAgIHJl
dHVybiByYzsKPiA+Pj4KPiA+Pgo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
